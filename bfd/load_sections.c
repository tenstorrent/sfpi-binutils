#include "config.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <elf.h>
#include <sys/mman.h>
#include "load_elf.h"
#include <stdint.h>

void initializ_memory_struct(struct tt_memory *memory_locationsi, int total_sections);
int loadable_sections_size(struct tt_memory *memory_locations);

// Print loadable section names.
void print_loadable_section_names(Elf32_Ehdr *header, void *file_data, FILE *fp) {
  Elf32_Shdr *section_headers = (Elf32_Shdr *)(file_data + header->e_shoff);
  Elf32_Shdr *section_header_string_table = &section_headers[header->e_shstrndx];
  char *section_names = (char *)(file_data + section_header_string_table->sh_offset);

  fprintf(fp, "\n\nLoadable Sections :");
  for(int i = 0, k = 1; i < header->e_shnum; ++i) {
    if ((section_headers[i].sh_flags & SHF_ALLOC) && (section_headers[i].sh_size != 0)) {
      fprintf(fp, "\n   %d)%s",k++, section_names + section_headers[i].sh_name);
    }
  }fprintf(fp, "\n");
}

// Print total loadable section size and number.
struct load_section_info *loadable_section_info(Elf32_Ehdr *header, void *file_data) {
  Elf32_Shdr *section_headers = (Elf32_Shdr *)(file_data + header->e_shoff);
  struct load_section_info *load_data = (struct load_section_info*)malloc(sizeof(struct load_section_info));
  load_data->total_size = 0; 
  load_data->total_number = 0;
  for(int i = 0; i < header->e_shnum; ++i) {
    if ((section_headers[i].sh_flags & SHF_ALLOC) && (section_headers[i].sh_size != 0)) {
      load_data->total_size += section_headers[i].sh_size;
      load_data->total_number++;
    }
  }
  return load_data;  
}

// Print the details of sections that are loaded into the memory.
void print_content(struct elf_data *memory_blobs, int total_sections, FILE *fp) {
  fprintf(fp, "\nLoaded Sections:");
  for(int i = 0; i < total_sections; ++i) {
      fprintf(fp, "\n   Section:  %s", memory_blobs->memory_locations[i].section_name);
      fprintf(fp, "\n   Starting Address :%p", memory_blobs->memory_locations[i].start_address);
      fprintf(fp, "\n   End Address      :%p", memory_blobs->memory_locations[i].end_address);
      fprintf(fp, "\n   Section Size     :%lu Bytes \n", memory_blobs->memory_locations[i].section_size);
  }
}

// Initializes the memory_location addresses.
void initializ_memory_struct(struct tt_memory *memory_locations, int total_sections) {
  for(int i = 0; i < total_sections; ++i) {
    memory_locations[i].start_address = NULL;
    memory_locations[i].end_address = NULL;
  }
}

// Loads the section into memory.
struct elf_data *load_sections(Elf32_Ehdr *header, void *file_data, struct elf_data *mem_blobs) {
  Elf32_Shdr *section_headers = (Elf32_Shdr *)(file_data + header->e_shoff); 
  Elf32_Shdr *section_header_string_table = &section_headers[header->e_shstrndx];
  char *section_names = (char *)(file_data + section_header_string_table->sh_offset);
//  int total_sections = number_of_loadable_sections(header, file_data);
  struct load_section_info *sec_load_info = loadable_section_info(header, file_data);

  if (mem_blobs == NULL) {
    fprintf(stderr, "Memory allocation failed\n");
  }

  mem_blobs->no_of_sections = 0;
  initializ_memory_struct(mem_blobs->memory_locations, sec_load_info->total_number);
  int section = 0; 
  for(int i = 0; i < header->e_shnum; ++i) {
    if ((section_headers[i].sh_flags & SHF_ALLOC) && (section_headers[i].sh_size != 0)) {
      unsigned long *section_address = mmap(mem_blobs->memory_locations[section].start_address,
                                            section_headers[i].sh_size,
                                            PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
      // Copy the content of the section to the mapped memory
      memcpy(section_address, file_data + section_headers[i].sh_offset, section_headers[i].sh_size);
      mem_blobs->memory_locations[section].start_address = section_address;
      mem_blobs->memory_locations[section].end_address = section_address + (unsigned long)section_headers[i].sh_size;
      mem_blobs->memory_locations[section].section_size = section_headers[i].sh_size;
      mem_blobs->no_of_sections++;
      strcpy(mem_blobs->memory_locations[section].section_name, section_names + section_headers[i].sh_name);      
      section++;
    }
  }
  return mem_blobs;
}
