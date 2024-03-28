//#ifndef RELOCATION_ELF_H
//#define RELOCATION_ELF_H

void reloc_elf_section(struct elf_data *load_data, int total_sections, struct file_data *load_content, FILE *fp);
void print_address(Elf32_Addr *addr_field, FILE *fp);
uint32_t  get_symbol_address(struct elf_data *memory_blobs, struct file_data *load_content, uint32_t reloc_info, FILE *fp);
//#endif

