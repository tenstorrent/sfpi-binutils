#as: -march=rv32im_xtttensixbh
#source: muladd-bh.s
#objdump: -d

.*:[    ]+file format .*


Disassembly of section .text:

0+000[  ]+<.text>:
[ 	]+[0-9a-f]+:[ 	]+10048c02[ 	]+sfpmad[ 	]+L0,L1,L2,L3,0
[ 	]+[0-9a-f]+:[ 	]+10048c06[ 	]+sfpmad[ 	]+L0,L1,L2,L3,1
[ 	]+[0-9a-f]+:[ 	]+10048c0a[ 	]+sfpmad[ 	]+L0,L1,L2,L3,2
[ 	]+[0-9a-f]+:[ 	]+10048c0e[ 	]+sfpmad[ 	]+L0,L1,L2,L3,3
[ 	]+[0-9a-f]+:[ 	]+14048c02[ 	]+sfpadd[ 	]+L0,L1,L2,L3,0
[ 	]+[0-9a-f]+:[ 	]+14048c06[ 	]+sfpadd[ 	]+L0,L1,L2,L3,1
[ 	]+[0-9a-f]+:[ 	]+14048c0a[ 	]+sfpadd[ 	]+L0,L1,L2,L3,2
[ 	]+[0-9a-f]+:[ 	]+14048c0e[ 	]+sfpadd[ 	]+L0,L1,L2,L3,3
[ 	]+[0-9a-f]+:[ 	]+18048c02[ 	]+sfpmul[ 	]+L0,L1,L2,L3,0
[ 	]+[0-9a-f]+:[ 	]+18048c06[ 	]+sfpmul[ 	]+L0,L1,L2,L3,1
[ 	]+[0-9a-f]+:[ 	]+18048c0a[ 	]+sfpmul[ 	]+L0,L1,L2,L3,2
[ 	]+[0-9a-f]+:[ 	]+18048c0e[ 	]+sfpmul[ 	]+L0,L1,L2,L3,3
