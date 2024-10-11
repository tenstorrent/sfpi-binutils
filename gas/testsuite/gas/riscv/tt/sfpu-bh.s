	.attribute arch, "rv32i2p0_xttbh"

	# sfpload	"ld1,lxa3,lm1,lxa2"
	sfpload L0,0,0,0
	sfpload L7,8191,15,7

	# sfploadi	"ld1,ln,lm1"
	sfploadi L0,-32768,0
	sfploadi L3,-8192,4
	sfploadi L4,8191,8
	sfploadi L7,32767,10

	#sfpstore	"lxa3,ld2,lm1,lxa2"
	sfpstore -4096,L0,0,0
	sfpstore 8191,L15,10,3
	sfpstore -4096,L0,12,4
	sfpstore 8191,L15,15,7

	#sfplut	"ld1,lm3"
	sfplut L0,0
	sfplut L7,4

	#sfpmuli	"lh,lj,li3"
	sfpmuli L0,0,0
	sfpmuli L7,65535,0

	#sfpaddi	"lh,lj,li3"
	sfpaddi L0,0,0
	sfpaddi L7,65535,0

	#sfpdivp2	"lh,lg,lf,li2"
	sfpdivp2 L0,L0,-16384,0
	sfpdivp2 L7,L15,16383,0
	sfpdivp2 L0,L0,-2048,1
	sfpdivp2 L7,L15,2047,1

	#sfpexexp	"lh,lg,li4"
	sfpexexp L0,L0,0
	sfpexexp L3,L7,3
	sfpexexp L4,L8,8
	sfpexexp L7,L15,11

	#sfpexman	"lh,lg,li2"
	sfpexman L0,L0,0
	sfpexman L7,L15,1

	#sfpiadd	"lh,lg,lf,li5"
	sfpiadd L0,L0,0,0
	sfpiadd L1,L2,4095,2
	sfpiadd L2,L4,-2048,4
	sfpiadd L3,L6,2047,6
	sfpiadd L4,L9,-2048,8
	sfpiadd L5,L11,2047,10
	sfpiadd L6,L13,-2048,12
	sfpiadd L7,L15,2047,14

	#sfpshft	"lh,lg,lf,li2"
	sfpshft L0,L0,0,0
	sfpshft L3,L7,4095,0
	sfpshft L4,L8,-2048,1
	sfpshft L7,L15,2047,1

	#sfpabs	"lh,lg,li2"
	sfpabs L0,L0,0
	sfpabs L7,L15,1

	#sfpand	"lh,lg"
	sfpand L0,L15

	#sfpor	"lh,lg"
	sfpor L7,L0

	#sfpnot	"lh,lg"
	sfpnot L4,L8

	#sfplz	"lh,lg,li6"
	sfplz L0,L0,0
	sfplz L7,L15,14

	#sfpsetexp	"lh,lg,lf,li2"
	sfpsetexp L0,L0,0,0
	sfpsetexp L3,L7,4095,0
	sfpsetexp L4,L8,0,1
	sfpsetexp L7,L15,4095,1

	#sfpsetman	"lh,lg,lf,li2"
	sfpsetman L0,L0,0,0
	sfpsetman L3,L7,4095,0
	sfpsetman L4,L8,0,1
	sfpsetman L7,L15,4095,1

	#sfpsetsgn	"lh,lg,lf,li2"
	sfpsetsgn L0,L0,0,0
	sfpsetsgn L3,L7,4095,0
	sfpsetsgn L4,L8,0,1
	sfpsetsgn L7,L15,4095,1

	#sfpmad	"le,la,lb,lc,lo"
	sfpmad L0,L0,L15,L0,0
	sfpmad L7,L15,L0,L15,0

	#sfpadd	"le,la,lb,lc,lo"
	sfpadd L0,L0,L15,L0,0
	sfpadd L7,L15,L0,L15,0

	#sfpmul	"le,la,lb,lc,lo"
	sfpmul L0,L0,L15,L0,0
	sfpmul L7,L15,L0,L15,0

	#sfpencc	"lf,li6"
	sfpencc 4095,0
	sfpencc 4095,2
	sfpencc 4095,8
	sfpencc 4095,10

	#sfpcompc	""
	sfpcompc

	#sfppushc	"li1"
	sfppushc 0
	sfppushc 15

	#sfppopc	"li1"
	sfppopc 0
	sfppopc 15

	#sfpsetcc	"lg,lf,li1"
	sfpsetcc L0,4095,0
	sfpsetcc L15,4095,15

	#sfpmov	"lh,lg,li2"
	sfpmov L0,L0,0
	sfpmov L7,L15,2
	sfpmov L7,L15,8

	#ttnop	""
	ttnop

	#sfpnop	""
	sfpnop

	#ttincrwc	"lk1,lk2,lk3,lk4"
	ttincrwc 0,0,0,0
	ttincrwc 63,15,15,15

	#ttreplay	"ll1,ll2,ll3,ll4"
	ttreplay 0,0,0,0
	ttreplay 1023,1023,7,1

	#sfpxor	"lh,lg"
	sfpxor L4,L8

	#sfpcast	"le,lc,li2"
	sfpcast L0,L0,0
	sfpcast L7,L15,1

	#sfpshft2	"le,lc,li2"
	sfpshft2 L0,L0,0
	sfpshft2 L7,L15,1

	#sfpshft2	"le,lc,lf,li2"
	sfpshft2 L0,L0,0,0
	sfpshft2 L7,L15,6,1

	#sfpconfig	"lh,lj,li7"
	sfpconfig 0,0,0
	sfpconfig 8,65535,8
	sfpconfig 11,0,12
	sfpconfig 15,65535,14	

	#sfpswap	"lh,lg,li1"
	sfpswap L0,L15,0
	sfpswap L7,L0,1

	#sfplutfp32	"le,lo"
	sfplutfp32 L0,0
	sfplutfp32 L7,14

	#sfptransp	""
	sfptransp

	#sfploadmacro	"ld1,lxa3,lm1,lxa2"
	sfploadmacro L0,0,0,0
	sfploadmacro L3,8191,9,3
	sfploadmacro L4,0,12,4
	sfploadmacro L7,8191,15,7

	#sfpstochrnd	"le,lb,lc,li1,lr1,lr2"
	sfpstochrnd L0,L0,L0,0,0,0
	sfpstochrnd L7,L15,L15,1,1,31

	#sfparecip	"lh,lg,lf,li1"
	sfparecip L0,L0,0,0
	sfparecip L7,L15,4095,1

	#sfpgt	"lh,lg,lf,li1"
	sfpgt L0,L0,0,0
	sfpgt L7,L15,4095,1

	#sfpmul24	"le,la,lb,lc,li1"
	sfpmul24 L0,L0,L0,L0,0
	sfpmul24 L7,L15,L15,L15,1

	#sfple	"lh,lg,lf,li1"
	sfple L0,L0,0,0
	sfple L7,L15,4095,1

	#ttadddmareg	"ls4,ls3,ls2,ls1"
	ttadddmareg 0,0,0,0
	ttadddmareg 1,63,63,63

	#ttsubdmareg	"ls4,ls3,ls2,ls1"
	ttsubdmareg 0,0,0,0
	ttsubdmareg 1,63,63,63

	#ttmuldmareg	"ls4,ls3,ls2,ls1"
	ttmuldmareg 0,0,0,0
	ttmuldmareg 1,63,63,63

	#ttsetdmareg	"ls6,ls7,ls8,ls9"
	ttsetdmareg 0,0,0,0
	ttsetdmareg 3,16383,1,127

	#ttshiftdmareg	"ls4,ls5,ls3,ls2,ls1"
	ttshiftdmareg 0,0,0,0,0
	ttshiftdmareg 1,31,63,63,63

	#ttcmpdmareg	"ls4,ls5,ls3,ls2,ls1"
	ttcmpdmareg 0,0,0,0,0
	ttcmpdmareg 1,31,63,63,63

	#ttbitwopdmareg	"ls4,ls5,ls3,ls2,ls1"
	ttbitwopdmareg 0,0,0,0,0
	ttbitwopdmareg 1,31,63,63,63

	#ttaddrcrxy	"lsa,lsb,lsc,lsd,lse,lsf"
	ttaddrcrxy 0,0,0,0,0,0
	ttaddrcrxy 7,63,7,7,7,63

	#ttaddrcrzw	"lsa,lsb,lsc,lsd,lse,lsf"
	ttaddrcrzw 0,0,0,0,0,0
	ttaddrcrzw 7,63,7,7,7,63

	#ttapool3s1	"lss,lsh,lsi,lsj"
	ttapool3s1 0,0,0,0
	ttapool3s1 3,127,1,16383

	#ttapool3s2	"lss,lsh,lsi,lsj"
	ttapool3s2 0,0,0,0
	ttapool3s2 3,127,1,16383

	#ttatcas	"lsk,lsl,lw1,lsn,lso,lsp"
	ttatcas 0,0,0,0,0,0
	ttatcas 1,15,511,3,63,63

	#ttatgetm	"lsr"
	ttatgetm 0
	ttatgetm 16777215

	#ttatincget	"lsk,lsm,lsn,lso,lsp"
	ttatincget 0,0,0,0,0
	ttatincget 1,15,3,63,63

	#ttatincgetptr	"lsk,lsq,lsl,lw1,lsn,lso,lsp"
	ttatincgetptr 0,0,0,0,0,0,0
	ttatincgetptr 1,1,15,511,3,63,63

	#ttatrelm	"lsr"
	ttatrelm 0
	ttatrelm 16777215

	#ttatswap	"lsk,lsm,lso,lsp"
	ttatswap 0,0,0,0
	ttatswap 1,15,63,63

	#ttcleardvalid	"lss,lst"
	ttcleardvalid 0,0
	ttcleardvalid 3,4194303

	#ttclrexphist	""
	ttclrexphist

	#ttconv3s1	"lss,lsu,lxa4,lxa5"
	ttconv3s1 0,0,0,0
	ttconv3s1 3,63,7,16383

	#ttconv3s2	"lss,lsu,lxa4,lxa5"
	ttconv3s2 0,0,0,0
	ttconv3s2 3,63,7,16383

	#ttdmanop	""
	ttdmanop

	#ttdotpv	"wss,wsx,wsy,lxa0,lxa5"
	ttdotpv 0,0,0,0,0
	ttdotpv 3,1,3,31,16383

	#ttelwadd	"wss,wsx,wsy,lxa0,lxa5"
	ttelwadd 0,0,0,0,0
	ttelwadd 3,1,3,31,16383

	#ttelwmul	"wss,wsx,wsy,lxa0,lxa5"
	ttelwmul 0,0,0,0,0
	ttelwmul 3,1,3,31,16383

	#ttelwsub	"wss,wsx,wsy,lxa0,lxa5"
	ttelwsub 0,0,0,0,0
	ttelwsub 3,1,3,31,16383

	#ttflushdma	"lt0"
	ttflushdma 0
	ttflushdma 16777215

	#ttgapool	"lss,lt1,lsz,lt2,lsj"
	ttgapool 0,0,0,0,0
	ttgapool 3,7,15,1,16383

	#ttgatesrcrst	"lt3,lt4"
	ttgatesrcrst 0,0
	ttgatesrcrst 8388607,1

	#ttgmpool	"lss,lt1,lsz,lt2,lsj"
	ttgmpool 0,0,0,0,0
	ttgmpool 3,7,15,1,16383

	#ttincadcxy	"lsa,lsb,lsc,lsd,lse"
	ttincadcxy 0,0,0,0,0
	ttincadcxy 7,63,7,7,7

	#ttincadczw	"lsa,lsb,lsc,lsd,lse"
	ttincadczw 0,0,0,0,0
	ttincadczw 7,63,7,7,7

	#ttloadind	"lt9,lta,ltb,lso,lsp"
	ttloadind 0,0,0,0,0
	ttloadind 3,255,3,63,63

	#ttloadreg	"ltc,ltd"
	ttloadreg 0,0
	ttloadreg 15,16383

	#ttmfconv3s1	"wss,wte,lxa4,lxa5"
	ttmfconv3s1 0,0,0,0
	ttmfconv3s1 3,31,7,16383

	#ttmop	"ltf,ltg,lth"
	ttmop 0,0,0
	ttmop 1,127,32767

	#ttmopcfg	"lti"
	ttmopcfg 0
	ttmopcfg 16777215

	#ttmova2d	"ltj,ltk,lxa4,lxa6,ltm"
	ttmova2d 0,0,0,0,0
	ttmova2d 1,63,7,3,4095

	#ttmovb2a	"ltn,lxa7,lxa6,wto"
	ttmovb2a 0,0,0,0
	ttmovb2a 7,7,3,4095

	#ttmovb2d	"ltj,ltk,lxa4,ltl,lxaa"
	ttmovb2d 0,0,0,0,0
	ttmovb2d 1,63,7,7,2047

	#ttmovd2a	"ltj,ltk,lxa4,lxa6,ltm"
	ttmovd2a 0,0,0,0,0
	ttmovd2a 1,63,7,3,1

	#ttmovd2b	"ltj,ltk,lxa4,lxa6,ltm"
	ttmovd2b 0,0,0,0,0
	ttmovd2b 1,63,7,3,1

	#ttmovdbga2d	"ltj,ltk,lxa4,lxa6,ltm"
	ttmovdbga2d 0,0,0,0,0
	ttmovdbga2d 1,63,7,3,1

	#ttmpool3s1	"lss,lsh,lsi,lsj"
	ttmpool3s1 0,0,0,0
	ttmpool3s1 3,127,1,16383

	#ttmpool3s2	"lss,lsh,lsi,lsj"
	ttmpool3s2 0,0,0,0
	ttmpool3s2 3,127,1,16383

	#ttmvmul	"lss,lt1,lxa0,lxa5"
	ttmvmul 0,0,0,0
	ttmvmul 3,7,31,16383

	#ttpacr	"lxab,lxac,lxad,lxae,lxaf,lxag,lxah,lxai,lxaj,lxak,lxal,lxam"
	ttpacr 0,0,0,0,0,0,0,0,0,0,0,0
	ttpacr 7,7,1,3,3,1,15,1,7,3,1,1

	#ttpacrsetreg	"lxan,lxao,lxap,lxaq,lxar,lxas,lxal,lxam"
	ttpacrsetreg 0,0,0,0,0,0,0,0
	ttpacrsetreg 1,1,1023,3,3,63,1,1

	#ttrareb	""
	ttrareb

	#ttrdcfg	"lu1,lu2"
	ttrdcfg 0,0
	ttrdcfg 255,32767

	#ttreg2flop	"lt9,lu3,lu4,lu5,lu6,lu7"
	ttreg2flop 0,0,0,0,0,0
	ttreg2flop 3,3,3,3,767,63

	#ttrmwcib0	"luc,lud,lue"
	ttrmwcib0 0,0,0
	ttrmwcib0 255,255,255

	#ttrmwcib1	"luc,lud,lue"
	ttrmwcib1 0,0,0
	ttrmwcib1 255,255,255

	#ttrmwcib2	"luc,lud,lue"
	ttrmwcib2 0,0,0
	ttrmwcib2 255,255,255

	#ttrmwcib3	"luc,lud,lue"
	ttrmwcib3 0,0,0
	ttrmwcib3 255,255,255

	#ttrstdma	""
	ttrstdma

	#ttsemget	"luf"
	ttsemget 0
	ttsemget 3145727

	#ttseminit	"lug,luh,lui"
	ttseminit 0,0,0
	ttseminit 63,63,12287

	#ttsempost	"luf"
	ttsempost 0
	ttsempost 3145727

	#ttsemwait	"luj,luk,lul"
	ttsemwait 0,0,0
	ttsemwait 511,8191,3 

	#ttsetadc	"lsa,lum,lun,luo"
	ttsetadc 0,0,0,0
	ttsetadc 7,1,3,16383

	#ttsetadcxx	"lsa,lup,luq"
	ttsetadcxx 0,0,0
	ttsetadcxx 7,2047,1023

	#ttsetadcxy	"lsa,lsb,lsc,lsd,lse,lur"
	ttsetadcxy 0,0,0,0,0,0
	ttsetadcxy 7,63,7,7,7,63

	#ttsetadczw	"lsa,lsb,lsc,lsd,lse,lur"
	ttsetadczw 0,0,0,0,0,0
	ttsetadczw 7,63,7,7,7,63

	#ttsetashrmh	"lus,lut"
	ttsetashrmh 0,0
	ttsetashrmh 8388607,1

	#ttsetashrmh0	"lus,lut"
	ttsetashrmh0 0,0
	ttsetashrmh0 8388607,1

	#ttsetashrmh1	"lus,lut"
	ttsetashrmh1 0,0
	ttsetashrmh1 8388607,1

	#ttsetashrmv	"luu"
	ttsetashrmv 0
	ttsetashrmv 16777215

	#ttsetc16	"luv,luw"
	ttsetc16 0,0
	ttsetc16 255,65535

	#ttsetdvalid	"luw"
	ttsetdvalid 0
	ttsetdvalid 65535

	#ttsetibrwc	"lt5,luy,luz"
	ttsetibrwc 0,0,0
	ttsetibrwc 15,4095,63

	#ttsetpkedgof	"lv0,lv1,lv2,lw2"
	ttsetpkedgof 0,0,0,0
	ttsetpkedgof 4095,15,15,15

	#ttsetrwc	"lv3,lt5,lt6,lt7,lt8,lur"
	ttsetrwc 0,0,0,0,0,0
	ttsetrwc 3,15,15,15,15,63

	#ttsfploadmacro	"lv4,lv5,ls2,ls1"
	# FIXME: sfploadmacro???
	ttsfploadmacro 0,0,0,0
	ttsfploadmacro 15,15,63,63

	#ttshiftxa	"lv8,lv9"
	ttshiftxa 0,0
	ttshiftxa 262143,3

	#ttshiftxb	"lxat,lxau,lvb"
	ttshiftxb 0,0,0
	ttshiftxb 1023,15,1023

	#ttstallwait	"luj,lvc"
	ttstallwait 0,0
	ttstallwait 511,255

	#ttstoreind	"lsk,lvd,lve,lvf,ltb,lso,lsp"
	ttstoreind 0,0,0,0,0,0,0
	ttstoreind 1,1,1,127,3,63,63

	#ttstorereg	"ltc,ltd"
	ttstorereg 0,0
	ttstorereg 15,16383

	#tttbufcmd	""
	tttbufcmd

	#tttrnspsrca	""
	tttrnspsrca

	#tttrnspsrcb	""
	tttrnspsrcb

	#ttunpacr	"lxba,lxbb,lxbc,lxbd,lxbe,lxbf,lxbg,lxbh,lxbi,lxbj,lxbk,lxbl,lxam"
	ttunpacr 0,0,0,0,0,0,0,0,0,0,0,0,0
 	ttunpacr 1,255,3,7,3,1,1,1,1,1,1,1,1

	#ttunpacrnop	"lxbm,lxbn,lxbo,lxbp,lxbq,lxbr,lxbs,lxbt,lxbu"
	ttunpacrnop 0,0,0,0,0,0,0,0,0
	ttunpacrnop 1,127,15,15,3,1,1,3,3

	#ttwrcfg	"lu1,lvs,lvt"
	ttwrcfg 0,0,0
	ttwrcfg 255,1,32767

	#ttxmov	"lvu,lvv"
	ttxmov 0,0
	ttxmov 1,8388607

	#ttzeroacoc	"lvw,lxc0,lxc1,lxc2,lxc3"
	ttzeroacc 0,0,0,0,0
	ttzeroacc 31,1,1,7,16383

	#ttzerosrc	"lvx,lvy,lvz,lw0"
	ttzerosrc 0,0,0,0
	ttzerosrc 1048575,1,1,3

	#ttcfgshiftmask	"lxav,lxaw,lxax,lxay,lxaz,lxbv"
	ttcfgshiftmask 0,0,0,0,0,0
	ttcfgshiftmask 1,7,31,31,3,255

	#ttmovdbgb2d	"ltj,ltk,lxa4,lxc4,lxaa"
	ttmovdbgb2d 0,0,0,0,0
	ttmovdbgb2d 1,63,7,7,2047

	#ttresourcedecl	"lxbw,lxbx,lxby"
	ttresourcedecl 0,0,0
	ttresourcedecl 2047,511,15

	#ttstreamwait	"luj,lxbz,lxb0,lxb1"
	ttstreamwait 0,0,0,0
	ttstreamwait 511,2047,1,7

	#ttstreamwrcfg	"lxb2,lxb3,lxb4"
	ttstreamwrcfg 0,0,0
	ttstreamwrcfg 7,1023,2047
