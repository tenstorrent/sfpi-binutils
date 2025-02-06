#as: -march=rv32im_xttwh
#source: ttinsn.s
#objdump: -d

.*:[    ]+file format .*


Disassembly of section .text:

0+000[ 	]+<.text>:
[ 	]+[0-9a-f]+:[ 	]+c0330001[ 	]+sfpload[ 	]+L0,0,12,3
[ 	]+[0-9a-f]+:[ 	]+c8330001[ 	]+sfpstore[ 	]+0,L0,12,3
[ 	]+[0-9a-f]+:[ 	]+c0330001[ 	]+sfpload[ 	]+L0,0,12,3
[ 	]+[0-9a-f]+:[ 	]+c8330001[ 	]+sfpstore[ 	]+0,L0,12,3
