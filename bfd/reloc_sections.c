#include <stdio.h>
#include <stdlib.h>
#include <elf/riscv.h>
#include <elf.h>
#include <string.h>
#include <sys/mman.h>
#include "read_elf.h"
#include "reloc_sections.h"

#define GLRO(x) _##x


uint32_t  get_symbol_address(struct elf_data *memory_blobs, struct file_data *load_content, uint32_t reloc_info, FILE *fp) {
  Elf32_Ehdr *elf_header = memory_blobs->elf_header;
  Elf32_Shdr *section_headers = memory_blobs->section_headers;

  // Find the symbol table section header
  Elf32_Shdr *symtab_hdr = NULL;
  for (int i = 0; i < elf_header->e_shnum; i++) {
    if (section_headers[i].sh_type == SHT_SYMTAB || section_headers[i].sh_type == SHT_DYNSYM) {
      symtab_hdr = &section_headers[i];
      break;
      }
    }

  if (symtab_hdr == NULL) {
    fprintf(fp, "No symbol table found.\n");
    return 0;
  }

    // Get the symbol table
  Elf32_Sym *symtab = (Elf32_Sym *)(load_content->elf_file_data + symtab_hdr->sh_offset);

    // Print symbol table entries
  for (int i = 0; i < (int)(symtab_hdr->sh_size / sizeof(Elf32_Sym)); i++) {
    Elf32_Word section_index = symtab[i].st_shndx; 
    if ((int)(reloc_info) == i){
	    return  section_headers[section_index].sh_addr + symtab[i].st_value;
    }
  }
  return 0;
}

static char *
getStringTable(struct file_data *load_content, Elf32_Shdr *section_headers,
               int num_sections, char *section_names)
{
  for(int i = 0; i < num_sections; i++)
    if (section_headers[i].sh_type == SHT_STRTAB  &&
        ! strncmp(section_names + section_headers[i].sh_name, ".dynstr", 7)) {
      return (char *)(load_content->elf_file_data +
                      section_headers[i].sh_offset);
    }
  return NULL;
}

static Elf32_Sym * 
getSymTabAndNumSyms(struct file_data *load_content, Elf32_Shdr *section_headers,
                    int num_sections, char *section_names, int *num_symbols)
{
  for(int i = 0; i < num_sections; i++)
    if (section_headers[i].sh_type == SHT_DYNSYM  &&
        ! strncmp(section_names + section_headers[i].sh_name, ".dynsym", 7)) {
      *num_symbols = section_headers[i].sh_size / sizeof(Elf32_Sym);
      return (Elf32_Sym *)(load_content->elf_file_data +
                           section_headers[i].sh_offset);
    }
  return NULL;
}

static unsigned int *
relocateRelocAddr(struct elf_data *memory_blobs, Elf32_Shdr *section_headers,
                  int num_sections, char *shstrtab, Elf32_Off rel_offset)
{
  for(int i = 0; i < num_sections; i++) {
    Elf32_Off start_offset = section_headers[i].sh_offset;
    Elf32_Word size = section_headers[i].sh_size;
    if (start_offset <= rel_offset && start_offset + size > rel_offset) {
      Elf32_Off adjusted_rel_offset = rel_offset - start_offset;
      char *sec_name = shstrtab + section_headers[i].sh_name;
      for(int j = 0; j < memory_blobs->no_of_sections; j++) {
        if (! strcmp(sec_name, memory_blobs->memory_locations[j].section_name))
          return memory_blobs->memory_locations[j].start_address +
                 adjusted_rel_offset;
      }
    }
  }
  return NULL;
}

static unsigned int *
relocateSymAddr(struct elf_data *memory_blobs, Elf32_Shdr *section_headers,
                char *shstrtab, Elf32_Sym *symtab,
                const char *strtab, int rel_sym)
{
  Elf32_Sym cur_sym = symtab[rel_sym];
  const char *sym_name = strtab + cur_sym.st_name;
  Elf32_Shdr sym_section = section_headers[cur_sym.st_shndx];
  char *sec_name = shstrtab + sym_section.sh_name;
  fprintf(stdout, "Relocating symbol %s\n", sym_name);
  for(int j = 0; j < memory_blobs->no_of_sections; j++)
    if (! strcmp(sec_name, memory_blobs->memory_locations[j].section_name))
      return memory_blobs->memory_locations[j].start_address + cur_sym.st_value;
  return NULL;
}

static void
applyRelocation(unsigned int *rel_addr, int r_type, unsigned int *sym_addr,
                Elf32_Sym sym, Elf32_Sword reloc_addend, unsigned int *l_addr)
{
  unsigned int *value = l_addr + reloc_addend;

  switch (r_type) {
    case R_RISCV_JUMP_SLOT:
    case R_RISCV_32:   
      *rel_addr = (unsigned int)sym_addr;
      break;

    case R_RISCV_RELATIVE:
      memcpy ((void *)rel_addr, (void *)&value, sizeof(value));
      break;

    case R_RISCV_TLS_DTPMOD32: 
      fprintf(stderr, "\n\nGot untested relocation type R_RISCV_TLS_DTPMOD32");
      break;

    case R_RISCV_TLS_DTPREL32:
      fprintf(stderr, "\n\nGot untested relocation type R_RISCV_TLS_DTPREL32");
      break;                

    case R_RISCV_IRELATIVE:                
      *rel_addr = (unsigned int)value;
      fprintf(stderr, "\n\nGot untested relocation type R_RISCV_IRELATIVE");
      break;

    case R_RISCV_TLS_TPREL32:
      *rel_addr = (unsigned int)sym_addr;
      break;

    case R_RISCV_COPY:
      memcpy((void *)rel_addr, (void *)sym_addr, sym.st_size);
      fprintf(stderr, "\n\nGot untested relocation type R_RISCV_COPY");
      break;

    case R_RISCV_NONE:                   
      break;              

    default:
      fprintf(stderr, "\n\nUnexpected relocation type.");
      break;
  }
}

void reloc_elf_sections(struct elf_data *memory_blobs,
                        int num_sections,
                        struct file_data *load_content,
                        FILE *fp __attribute((unused)))
{
  Elf32_Shdr *section_headers = (Elf32_Shdr *)(load_content->elf_file_data + 
                                 memory_blobs->elf_header->e_shoff);
  Elf32_Shdr *section_hdr_strtab = &section_headers[memory_blobs->elf_header->e_shstrndx];
  char *section_names = (char *)(load_content->elf_file_data + 
                                 section_hdr_strtab->sh_offset);

  Elf32_Sym *symtab;
  int num_symbols = 0;
  const char *strtab;

  symtab = getSymTabAndNumSyms(load_content, section_headers,
                               memory_blobs->elf_header->e_shnum,
                               section_names, &num_symbols);

  strtab = getStringTable(load_content, section_headers,
                          memory_blobs->elf_header->e_shnum,
                          section_names);
  if (strtab == NULL)
    printf("String table is NULL\n");

  for(int i = 0; i < num_sections; i++) {
    Elf32_Word sh_type = section_headers[i].sh_type;

    if (sh_type == SHT_REL) {
      int num_relocs = section_headers[i].sh_size / sizeof(Elf32_Rel);
      Elf32_Rel *rels = (Elf32_Rel *)(load_content->elf_file_data +
                                      section_headers[i].sh_offset);
      for (int j = 0; j < num_relocs; j++) {
        Elf32_Rel cur_rel = rels[j];
        Elf32_Addr rel_addr = cur_rel.r_offset;
        unsigned int *relocated_rel_addr;
        relocated_rel_addr = relocateRelocAddr(memory_blobs, section_headers,
                                               memory_blobs->elf_header->e_shnum,
                                               section_names, rel_addr);
        int reloc_type = ELF32_R_TYPE(cur_rel.r_info);
        int reloc_sym  = ELF32_R_SYM(cur_rel.r_info);
        unsigned int *relocated_sym_addr;
        relocated_sym_addr = reloc_sym ?
                               relocateSymAddr(memory_blobs, section_headers,
                                               section_names, symtab, strtab,
                                               reloc_sym)
                               : 0;
        applyRelocation(relocated_rel_addr, reloc_type, relocated_sym_addr,
                        symtab[reloc_sym], 0,
                        memory_blobs->memory_locations[0].start_address);
      }
    }

    if (section_headers[i].sh_type == SHT_RELA) {
      int num_relocs = section_headers[i].sh_size / sizeof(Elf32_Rela);
      Elf32_Rela *relas = (Elf32_Rela *)(load_content->elf_file_data +
                                         section_headers[i].sh_offset);
      for (int j = 0; j < num_relocs; j++) {
        Elf32_Rela cur_rela = relas[j];
        Elf32_Addr rela_addr = cur_rela.r_offset;
        unsigned int *relocated_rela_addr;
        relocated_rela_addr = relocateRelocAddr(memory_blobs, section_headers,
                                                memory_blobs->elf_header->e_shnum,
                                                section_names, rela_addr);
        int reloc_type = ELF32_R_TYPE(cur_rela.r_info);
        int reloc_sym  = ELF32_R_SYM(cur_rela.r_info);
        unsigned int *relocated_sym_addr;
        relocated_sym_addr = reloc_sym ?
                               relocateSymAddr(memory_blobs, section_headers,
                                               section_names, symtab, strtab,
                                               reloc_sym)
                               : 0;
        relocated_sym_addr += cur_rela.r_addend;
        applyRelocation(relocated_rela_addr, reloc_type, relocated_sym_addr,
                        symtab[reloc_sym], cur_rela.r_addend,
                        memory_blobs->memory_locations[0].start_address);
      }
    }
  }
}

void print_address(Elf32_Addr *addr_field, FILE *fp)
{
  fprintf(fp, "\n\n addr_field:%p", addr_field);
}
