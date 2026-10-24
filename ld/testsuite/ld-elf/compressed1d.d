#source: compress1.s
#as: --compress-debug-sections=none
#ld: -r --compress-debug-sections=zlib-gnu
#readelf: -SW
#xfail: [uses_genelf]
#notarget: riscv*-*-*
#xfail: loongarch*-*-*
# Not all ELF targets use the elf.em emulation...
# RISC-V retains relocations for text label subtractions.  Its little- and
# big-endian results are checked by compressed1d-riscv-{le,be}, and the
# decompressed bytes and relocations by compressed1d-riscv-roundtrip.
# LoongArch has linker relaxations that delete code, so text label subtractions
# do not get resolved at assembly time, which results in a compressed section.

#failif
#...
  \[[ 0-9]+\] \.zdebug_aranges[ 	]+(PROGBITS|MIPS_DWARF)[ 	0-9a-z]+ .*
#...
