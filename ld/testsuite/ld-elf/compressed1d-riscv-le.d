#source: compress1.s
#as: -mlittle-endian --compress-debug-sections=none
#ld: -EL -r --compress-debug-sections=zlib-gnu
#readelf: -SW -rW
#target: riscv*-*-*

# Text label differences retain ADD/SUB relocations.  The little-endian
# placeholder bytes compress, unlike the literal bytes in compress1-alt.s.
#...
  \[[ 0-9]+\] \.zdebug_aranges[ 	]+PROGBITS[ 	0-9a-z]+ .*
#...
Relocation section '\.rela.zdebug_aranges'.*contains 4 entries:
#...
0*14[ 	]+.*R_RISCV_ADD32[ 	]+.*\.Lbegin_text1 \+ 0
0*14[ 	]+.*R_RISCV_SUB32[ 	]+.*\.Lend_text1 \+ 0
#...
