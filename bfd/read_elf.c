#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <elf.h>
#include <unistd.h>
#include "load_elf.h"

// Print the ELF Header
void print_elf_header(Elf32_Ehdr *header, int debug_info, FILE *fp) {
  if(debug_info) {
    if(debug_info == 1 || debug_info == 2 || debug_info == 3) {
      fprintf(fp, "ELF Header:\n");
      fprintf(fp, "  Magic: ");
      for (int i = 0; i < EI_NIDENT; i++) {
        fprintf(fp, "%02x ", header->e_ident[i]);
      }
      fprintf(fp, "\n");
      fprintf(fp, "  Type: %u\n", header->e_type);
      fprintf(fp, "  Machine: %u\n", header->e_machine);
      fprintf(fp, "  ELF header size: %u bytes\n", header->e_ehsize);
      if(debug_info == 2 || debug_info == 3) {
        fprintf(fp, "  Version: %u\n", header->e_version);
        fprintf(fp, "  Entry: %#x\n", header->e_entry);
        fprintf(fp, "  Program Header: %#x\n", header->e_phoff);
        fprintf(fp, "  Section Header: %#x\n", header->e_shoff);
        if(debug_info == 3) {
          fprintf(fp, "  Processor-specific: %x\n", header->e_flags);
          fprintf(fp, "  Program header table entry size: %u bytes\n", header->e_phentsize);
          fprintf(fp, "  Program header table entry count: %u \n", header->e_phnum);
          fprintf(fp, "  Section header table entry size: %u bytes\n", header->e_shentsize);
          fprintf(fp, "  Section header table entry count: %u \n", header->e_shnum);
          fprintf(fp, "  Section header string table index: %u \n", header->e_shstrndx);
        }
      }
    }
  }
}

// Print Section flags.
void print_section_flags(uint32_t sh_flags, FILE *fp){
  if (sh_flags & SHF_WRITE) {
    fprintf(fp, "SHF_WRITE,  ");
  }
  if (sh_flags & SHF_ALLOC) {
    fprintf(fp, "SHF_ALLOC,  ");
  }
  if (sh_flags & SHF_EXECINSTR) {
    fprintf(fp, "SHF_EXECINSTR,  ");
  }
  if (sh_flags & SHF_MERGE) {
    fprintf(fp, "SHF_MERGE,  ");
  }
  if (sh_flags & SHF_STRINGS) {
    fprintf(fp, "SHF_STRINGS,  ");
  }
  if (sh_flags & SHF_INFO_LINK) {
    fprintf(fp, "SHF_INFO_LINK,  ");
  }
  if (sh_flags & SHF_LINK_ORDER) {
    fprintf(fp, "SHF_LINK_ORDER,  ");
  }
  if (sh_flags & SHF_OS_NONCONFORMING) {
    fprintf(fp, "SHF_OS_NONCONFORMING,  ");
  }
  if (sh_flags & SHF_GROUP) {
    fprintf(fp, "SHF_GROUP,  ");
  }
  if (sh_flags & SHF_TLS) {
    fprintf(fp, "SHF_TLS,  ");
  }
  if (sh_flags & SHF_COMPRESSED) {
    fprintf(fp, "SHF_COMPRESSED,  ");
  }
  if (sh_flags & SHF_MASKOS) {
    fprintf(fp, "SHF_MASKOS,  ");
  }
  if(sh_flags & SHF_MASKPROC){
    fprintf(fp, "SHF_MASKPROC,  ");
  }
  if(sh_flags & SHF_ORDERED){
    fprintf(fp, "SHF_ORDERED,  ");
  }
  if(sh_flags & SHF_EXCLUDE){
    fprintf(fp, "SHF_EXCLUDE.  ");
  }
}

/* Print the Section header information based on the variable s_debug.
   If s_debug is 0, print nothing.
   if it is 1, print basic information.
   if it is 2, print few more information.
   if it is 3, print all the information
*/
void print_section_header(Elf32_Ehdr *header, void *file_data, int s_debug, FILE *fp){
  Elf32_Shdr *section_headers = (Elf32_Shdr *)(file_data + header->e_shoff);
  Elf32_Shdr *section_header_string_table = &section_headers[header->e_shstrndx];
  char *section_names = (char *)(file_data + section_header_string_table->sh_offset);
  if(s_debug) {
    fprintf(fp, "\nSection Header:\n");
    fprintf(fp, "  Number of Sections: %u \n", header->e_shnum);
    for(int i = 0; i < header->e_shnum; ++i) {
      if(s_debug == 1 || s_debug == 2 || s_debug == 3){
        fprintf(fp, "\n%d.",i);
        fprintf(fp, "\n  Name         : %s", section_names + section_headers[i].sh_name);
        fprintf(fp, "\n  Size         : %u", section_headers[i].sh_size);
        if(s_debug == 2 || s_debug == 3) {
          fprintf(fp, "\n  Address      : %#x", section_headers[i].sh_addr);
          fprintf(fp, "\n  Flags        : %u  ", section_headers[i].sh_flags);
          if(section_headers[i].sh_flags){
            print_section_flags(section_headers[i].sh_flags, fp);
          }
          if(s_debug == 3) {
            fprintf(fp, "\n  Offset       : %#x", section_headers[i].sh_offset);
            fprintf(fp, "\n  Section Link : %u", section_headers[i].sh_link);
            fprintf(fp, "\n  Info         : %u", section_headers[i].sh_info);
            fprintf(fp, "\n  AddrAlign    : %u", section_headers[i].sh_addralign);
            fprintf(fp, "\n  EntSize:     : %u", section_headers[i].sh_entsize); 
          } 
        }      
      }
    }
  }
}

// Print Program flags.
void print_program_flags(uint32_t ph_flags, FILE *fp) {
  if(ph_flags & PF_X) {
    fprintf(fp, "PF_X, ");
  }
  if(ph_flags & PF_W) {
    fprintf(fp, "PF_W, ");
  }
  if(ph_flags & PF_R) {
    fprintf(fp, "PF_R, ");
  }
  if(ph_flags & PF_MASKOS) {
    fprintf(fp, "PF_MASKOS, ");
  }
  if(ph_flags & PF_MASKPROC) {
    fprintf(fp, "PF_MASKPROC, ");
  }
}

// Print Program type.
void print_program_type(uint32_t ph_type, FILE *fp) {
  if(ph_type & PT_NULL) {
    fprintf(fp, "PT_NULL");
  }else if(ph_type & PT_LOAD) {
    fprintf(fp, "PT_LOAD");
  }else if(ph_type & PT_DYNAMIC) {
    fprintf(fp, "PT_DYNAMIC");
  }else if(ph_type & PT_INTERP) {
    fprintf(fp, "PT_INTERP");
  }else if(ph_type & PT_NOTE) {
    fprintf(fp, "PT_NOTE");
  }else if(ph_type & PT_SHLIB) {
    fprintf(fp, "PT_SHLIB");
  }else if(ph_type & PT_PHDR) {
    fprintf(fp, "PT_PHDR");
  }else if(ph_type & PT_TLS) {
    fprintf(fp, "PT_TLS");
  }else if(ph_type & PT_NUM) {
    fprintf(fp, "PT_NUM");
  }else if(ph_type & PT_LOOS) {
    fprintf(fp, "PT_LOOS");
  }else if(ph_type & PT_GNU_EH_FRAME) {
    fprintf(fp, "PT_GNU_EH_FRAME");
  }else if(ph_type & PT_GNU_STACK) {
    fprintf(fp, "PT_GNU_STACK");
  }else if(ph_type & PT_GNU_RELRO) {
    fprintf(fp, "PT_GNU_RELRO");
  }else if(ph_type & PT_LOSUNW) {
    fprintf(fp, "PT_LOSUNW");
  }else if(ph_type & PT_SUNWBSS) {
    fprintf(fp, "PT_SUNWBSS");
  }else if(ph_type & PT_SUNWSTACK) {
    fprintf(fp, "PT_SUNWSTACK");
  }else if(ph_type & PT_HISUNW) {
    fprintf(fp, "PT_HISUNW");
  }else if(ph_type & PT_HIOS) {
    fprintf(fp, "PT_HIOS");
  }else if(ph_type & PT_LOPROC) {
    fprintf(fp, "PT_LOPROC");
  }else if(ph_type & PT_HIPROC) {
    fprintf(fp, "PT_HIPROC");
  }
}

/* Print the Program header information based on the variable p_debug.
   If p_debug is 0, print nothing.
   if it is 1, print basic information.
   if it is 2, print few more information.
   if it is 3, print all the information
*/
void print_program_header(Elf32_Ehdr *header, void *file_data, int p_debug, FILE *fp){
  Elf32_Phdr *program_header = (file_data + header->e_phoff);
  if(p_debug) {
    fprintf(fp, "\n\nProgram Headers :");
    for(int i = 0; i < header->e_phnum; ++i){
      if(p_debug == 1 || p_debug == 2 || p_debug == 3) {
        fprintf(fp, "\n%d.",i);
        fprintf(fp, "\n  Type             : %u ", program_header[i].p_type);
        if(program_header[i].p_type) {
          print_program_type(program_header[i].p_type, fp);
        }
        fprintf(fp, "\n  Offset           : %#x", program_header[i].p_offset);
        if(p_debug == 2 || p_debug == 3) {
          fprintf(fp, "\n  Virtual Address  : %#x", program_header[i].p_vaddr);
          fprintf(fp, "\n  Physical Address : %#x", program_header[i].p_paddr);
        }
        if(p_debug == 3) {
          fprintf(fp, "\n  Flags            : %u  ", program_header[i].p_flags);
          if(program_header[i].p_flags) {
            print_program_flags(program_header[i].p_flags, fp);
          }
          fprintf(fp, "\n  File Size        : %u Bytes", program_header[i].p_filesz);
          fprintf(fp, "\n  Memory Size      : %u Bytes", program_header[i].p_memsz);
          fprintf(fp, "\n  Align            : %u", program_header[i].p_align);  
        }
      }
    }  
  }
}

// Returns an ELF Header and a pointer to the file content.
struct file_data *elf_file_data(char filepath[], struct file_data *file_mem) {
  FILE *elf_file;
  elf_file = fopen(filepath, "r");

  if (elf_file == NULL) {
    fprintf(stderr, "Error opening file.");
  }

  struct stat file_info;
  if (fstat(fileno(elf_file), &file_info) == -1)
  {
    fprintf(stderr, "Error getting file size.");
    fclose(elf_file);
  }

  if (file_mem == NULL) {
    fprintf(stderr, "Memory allocation failed");
  }

  void *file_content = mmap(NULL, file_info.st_size, PROT_READ, MAP_PRIVATE, fileno(elf_file), 0);
  if (file_content == MAP_FAILED) {
    fprintf(stderr, "Error mapping file.");
    fclose(elf_file);
  }
  file_mem->header = (Elf32_Ehdr *)file_content;
  file_mem->elf_file_data = file_content;
  fclose(elf_file);
  return file_mem;   
}

// Print the details of the loaded sections into memory.  
void elf_print_loadable_sections(struct elf_data *memory_blobs, 
                                 struct load_section_info *sec_load_info,
                                  FILE *fp) {
  
  print_content(memory_blobs, sec_load_info->total_number, fp);
  fprintf(fp, "\nThe number of sections loaded into memory : %d",
              memory_blobs->no_of_sections);
  fprintf(fp, "\nThe total size is loaded into memory : %d Bytes\n",
           sec_load_info->total_size);
  

}

/* The first paramenter is a file path to an ELF File and 
   the second parameter is the debug information.
     To print nothing, give 0,
     1 for the basic information,
     2 for a few more information and
     3 for all the information.
*/
int elf_info(char filepath[], int debug_info, FILE *fp) {
  struct file_data *file_mem = (struct file_data*)malloc(sizeof(struct file_data));
  struct file_data *file_content = elf_file_data(filepath, file_mem);
  if (file_content == NULL) {
    fprintf(stderr, "Memory allocation failed");
     free(file_mem);
     return FAILURE;
  }  
  if(!(file_content->header->e_ident[0] == 0x7f && file_content->header->e_ident[1] == 'E' &&
       file_content->header->e_ident[2] == 'L' && file_content->header->e_ident[3] == 'F')) {
    fprintf(stderr,"The file is not an ELF file.");  
    free(file_mem);
    return FAILURE;
  }
  if(!((0 < file_content->header->e_machine && file_content->header->e_machine <= 243) ||
        file_content->header->e_machine == 260 || file_content->header->e_machine == 261 )) {
    fprintf(stderr, "The machine architecture doese not support.");
    free(file_mem);
    return FAILURE;
  }
  else {
    // Print the ELF header
    print_elf_header(file_content->header, debug_info, fp);
   
    // Print the Section header 
    print_section_header(file_content->header, file_content->elf_file_data, debug_info, fp);

    // Print the Program header
    print_program_header(file_content->header, file_content->elf_file_data, debug_info, fp);
 
    // Print the name of loadable section names
    print_loadable_section_names(file_content->header, file_content->elf_file_data, fp);
  }
  free(file_mem);
  return SUCCESS;
}

// Load sections into memory
int elf_load(char filepath[], FILE *fp) {
  struct file_data *file_mem = (struct file_data*)malloc(sizeof(struct file_data));
  struct file_data *load_content = elf_file_data(filepath, file_mem);
  if(load_content == NULL || load_content->header == NULL) {
    fprintf(stderr, "Memory allocation failed");         
    free(file_mem);
    return FAILURE;
  }
  struct load_section_info *sec_load_info = loadable_section_info(load_content->header, load_content->elf_file_data);
  if(!sec_load_info->total_number){
    fprintf(stderr, "No sections to load into memory.");
    free(file_mem);
    return FAILURE;
  } 
  struct elf_data *mem_blobs = (struct elf_data*)malloc(sizeof(struct elf_data));
  mem_blobs->memory_locations = (struct tt_memory*)malloc(sec_load_info->total_number * sizeof(struct tt_memory));
  struct elf_data *load_data = load_sections(load_content->header, load_content->elf_file_data, mem_blobs);
  if(load_data == NULL){
    fprintf(stderr, "Memory allocation failed.");
    free(file_mem);
    free(mem_blobs->memory_locations);
    free(mem_blobs);
    return FAILURE;
  }
  elf_print_loadable_sections(load_data, sec_load_info, fp);
  free(file_mem);
  free(mem_blobs->memory_locations);
  free(mem_blobs);
  return SUCCESS;
}
