#source: compress1.s
#as: -mlittle-endian --compress-debug-sections=none
#ld: -EL -r --compress-debug-sections=zlib-gnu
#objcopy_linked_file: --decompress-debug-sections
#readelf: -SW -rW -x .debug_aranges
#target: riscv*-*-*

# Decompression must restore the original 32 bytes and their ADD/SUB fixups.
#...
  \[[ 0-9]+\] \.debug_aranges[ 	]+PROGBITS[ 	0-9a-z]+ .*
#...
Relocation section '\.rela.debug_aranges'.*contains 4 entries:
#...
0*14[ 	]+.*R_RISCV_ADD32[ 	]+.*\.Lbegin_text1 \+ 0
0*14[ 	]+.*R_RISCV_SUB32[ 	]+.*\.Lend_text1 \+ 0
#...
Hex dump of section '\.debug_aranges':
 NOTE: This section has relocations against it, but these have NOT been applied to this dump.
  0x00000000 1c000000 02000000 00000400 00000000 .*
  0x00000010 00000000 00000000 00000000 00000000 .*
#...
