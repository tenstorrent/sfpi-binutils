#source: compress1.s
#as: -mbig-endian --compress-debug-sections=none
#ld: -EB -r --compress-debug-sections=zlib-gnu
#readelf: -SW -rW
#target: riscv*-*-*

# The same relocation-bearing section's big-endian bytes do not compress.
#...
  \[[ 0-9]+\] \.debug_aranges[ 	]+PROGBITS[ 	0-9a-z]+ .*
#...
Relocation section '\.rela.debug_aranges'.*contains 4 entries:
#...
0*14[ 	]+.*R_RISCV_ADD32[ 	]+.*\.Lbegin_text1 \+ 0
0*14[ 	]+.*R_RISCV_SUB32[ 	]+.*\.Lend_text1 \+ 0
#...
