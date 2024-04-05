#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <elf.h>
#include <unistd.h>
#include <string.h> 
#include "read_elf.h" 

int main(int argc, char **argv) {
  if (argc != 4) {
    fprintf(stderr, "Usage: %s <SharedLib or PIE> <output file name> "
                    "<debug level>\nWhere, debug level is between 0 and 3\n",
                    argv[0]);
    exit(1);
  }

  /* Debug levels:
   * 0 - Print nothing
   * 1 - Print basic information
   * 2 - Print some more details
   * 3 - Print all details
   */
  char *endptr;
  int debug_level = strtol(argv[3], &endptr, 10);
  if ((*argv[3] != '\0' && *endptr != '\0') ||
      debug_level < 0  ||
      debug_level > 3) {
    fprintf(stderr, "Error: Debug level must be a number between 0 and 3\n");
    exit(2);
  }

  struct stat statbuf;
  if (stat(argv[1], &statbuf)) {
    fprintf(stderr, "Error: Cannot stat file %s\n", argv[1]);
    exit(3);
  }

  FILE *fp;
  fp = fopen(argv[2], "w");
  if (fp == NULL) {
    fprintf(stderr, "Warning: Cannot open file %s for writing.  Writing to stdout\n", argv[2]);
    fp = stdout;
  }

  int value_1 = elf_info(argv[1], debug_level, fp);    
  int value_2 = elf_load(argv[1], fp);  

  if (fp != stdout)
    fclose(fp);

  return 0;
}
