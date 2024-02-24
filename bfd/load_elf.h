#ifndef LOAD_ELF_H
#define LOAD_ELF_H
#define FAILURE -1
#define SUCCESS 0

struct tt_memory {
  unsigned long *start_address;
  unsigned long *end_address;
  unsigned long section_size;
  char section_name[20];
};

struct elf_data{
  struct tt_memory *memory_locations;
  int no_of_sections;
};

struct file_data{
  Elf32_Ehdr *header;
  void *elf_file_data;
};

struct load_section_info{
  int total_number;
  int total_size;
};

struct file_data *elf_file_data(char filepath[],  struct file_data *file_mem);
int elf_load(char filepath[], FILE *fp);
int elf_info(char filepath[], int debug_info, FILE *fp); 
void print_elf_header(Elf32_Ehdr *header, int debug_info, FILE *fp);
void print_section_header(Elf32_Ehdr *header, void *file_data, int s_debug, FILE *fp);
void print_program_header(Elf32_Ehdr *header, void *file_data, int p_debug, FILE *fp);
void print_loadable_section_names(Elf32_Ehdr *header, void *file_data, FILE *fp);
void print_section_flags(uint32_t sh_flags, FILE *fp);
void print_program_flags(uint32_t ph_flags, FILE *fp);
void print_program_type(uint32_t ph_type, FILE *fp);
void print_content(struct elf_data *memory_blobs, int total_sections, FILE *fp);
struct elf_data *load_sections(Elf32_Ehdr *header, void *file_data,  struct elf_data *mem_blobs);
struct load_section_info *loadable_section_info(Elf32_Ehdr *header, void *file_data);
void elf_print_loadable_sections(struct elf_data *memory_blobs, struct load_section_info *sec_load_info, FILE *fp);
#endif // LOAD_ELF_H
