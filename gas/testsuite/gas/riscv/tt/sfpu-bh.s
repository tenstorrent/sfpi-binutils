	.attribute arch, "rv32i2p0_xttbh"

	# sfpload	"Jd1,Jxa3,Jm1,Jxa2"
	sfpload L0,0,0,0
	sfpload L7,8191,15,7

	# sfploadi	"Jd1,Jn,Jm1"
	sfploadi L0,-32768,0
	sfploadi L3,-8192,4
	sfploadi L4,8191,8
	sfploadi L7,32767,10

	#sfpstore	"Jxa3,Jd2,Jm1,Jxa2"
	sfpstore -4096,L0,0,0
	sfpstore 8191,L15,10,3
	sfpstore -4096,L0,12,4
	sfpstore 8191,L15,15,7

	#sfplut	"Jd1,Jm3"
	sfplut L0,0
	sfplut L7,4

	#sfpmuli	"Jh,Jj,Ji3"
	sfpmuli L0,0,0
	sfpmuli L7,65535,0

	#sfpaddi	"Jh,Jj,Ji3"
	sfpaddi L0,0,0
	sfpaddi L7,65535,0

	#sfpdivp2	"Jh,Jg,Jf,Ji2"
	sfpdivp2 L0,L0,-16384,0
	sfpdivp2 L7,L15,16383,0
	sfpdivp2 L0,L0,-2048,1
	sfpdivp2 L7,L15,2047,1

	#sfpexexp	"Jh,Jg,Ji4"
	sfpexexp L0,L0,0
	sfpexexp L3,L7,3
	sfpexexp L4,L8,8
	sfpexexp L7,L15,11

	#sfpexman	"Jh,Jg,Ji2"
	sfpexman L0,L0,0
	sfpexman L7,L15,1

	#sfpiadd	"Jh,Jg,Jf,Ji5"
	sfpiadd L0,L0,0,0
	sfpiadd L1,L2,4095,2
	sfpiadd L2,L4,-2048,4
	sfpiadd L3,L6,2047,6
	sfpiadd L4,L9,-2048,8
	sfpiadd L5,L11,2047,10
	sfpiadd L6,L13,-2048,12
	sfpiadd L7,L15,2047,14

	#sfpshft	"Jh,Jg,Jf,Ji2"
	sfpshft L0,L0,0,0
	sfpshft L3,L7,4095,0
	sfpshft L4,L8,-2048,1
	sfpshft L7,L15,2047,1

	#sfpabs	"Jh,Jg,Ji2"
	sfpabs L0,L0,0
	sfpabs L7,L15,1

	#sfpand	"Jh,Jg"
	sfpand L0,L15

	#sfpor	"Jh,Jg"
	sfpor L7,L0

	#sfpnot	"Jh,Jg"
	sfpnot L4,L8

	#sfplz	"Jh,Jg,Ji6"
	sfplz L0,L0,0
	sfplz L7,L15,14

	#sfpsetexp	"Jh,Jg,Jf,Ji2"
	sfpsetexp L0,L0,0,0
	sfpsetexp L3,L7,4095,0
	sfpsetexp L4,L8,0,1
	sfpsetexp L7,L15,4095,1

	#sfpsetman	"Jh,Jg,Jf,Ji2"
	sfpsetman L0,L0,0,0
	sfpsetman L3,L7,4095,0
	sfpsetman L4,L8,0,1
	sfpsetman L7,L15,4095,1

	#sfpsetsgn	"Jh,Jg,Jf,Ji2"
	sfpsetsgn L0,L0,0,0
	sfpsetsgn L3,L7,4095,0
	sfpsetsgn L4,L8,0,1
	sfpsetsgn L7,L15,4095,1

	#sfpmad	"Je,Ja,Jb,Jc,Jo"
	sfpmad L0,L0,L15,L0,0
	sfpmad L7,L15,L0,L15,0

	#sfpadd	"Je,Ja,Jb,Jc,Jo"
	sfpadd L0,L0,L15,L0,0
	sfpadd L7,L15,L0,L15,0

	#sfpmul	"Je,Ja,Jb,Jc,Jo"
	sfpmul L0,L0,L15,L0,0
	sfpmul L7,L15,L0,L15,0

	#sfpencc	"Jf,Ji6"
	sfpencc 4095,0
	sfpencc 4095,2
	sfpencc 4095,8
	sfpencc 4095,10

	#sfpcompc	""
	sfpcompc

	#sfppushc	"Ji1"
	sfppushc 0
	sfppushc 15

	#sfppopc	"Ji1"
	sfppopc 0
	sfppopc 15

	#sfpsetcc	"Jg,Jf,Ji1"
	sfpsetcc L0,4095,0
	sfpsetcc L15,4095,15

	#sfpmov	"Jh,Jg,Ji2"
	sfpmov L0,L0,0
	sfpmov L7,L15,2
	sfpmov L7,L15,8

	#ttnop	""
	ttnop

	#sfpnop	""
	sfpnop

	#ttincrwc	"Jk1,Jk2,Jk3,Jk4"
	ttincrwc 0,0,0,0
	ttincrwc 63,15,15,15

	#ttreplay	"Jl1,Jl2,Jl3,Jl4"
	ttreplay 0,0,0,0
	ttreplay 1023,1023,7,1

	#sfpxor	"Jh,Jg"
	sfpxor L4,L8

	#sfpcast	"Je,Jc,Ji2"
	sfpcast L0,L0,0
	sfpcast L7,L15,1

	#sfpshft2	"Je,Jc,Jf,Ji2"
	sfpshft2 L0,L0,0,0
	sfpshft2 L7,L15,6,1

	#sfpconfig	"Jh,Jj,Ji7"
	sfpconfig 0,0,0
	sfpconfig 8,65535,8
	sfpconfig 11,0,12
	sfpconfig 15,65535,14

	#sfpswap	"Jh,Jg,Ji1"
	sfpswap L0,L15,0
	sfpswap L7,L0,1

	#sfplutfp32	"Je,Jo"
	sfplutfp32 L0,0
	sfplutfp32 L7,14

	#sfptransp	""
	sfptransp

	#sfploadmacro	"Jd1,Jxa3,Jm1,Jxa2"
	sfploadmacro L0,0,0,0
	sfploadmacro L3,8191,9,3
	sfploadmacro L4,0,12,4
	sfploadmacro L7,8191,15,7

	#sfpstochrnd	"Je,Jb,Jc,Ji1,Jr1,Jr2"
	sfpstochrnd L0,L0,L0,0,0,0
	sfpstochrnd L7,L15,L15,1,1,31

	#sfparecip	"Jh,Jg,Ji1"
	sfparecip L0,L0,0
	sfparecip L0,L0,1
	sfparecip L0,L0,2
	sfparecip L7,L0,0
	sfparecip L0,L15,0

	#sfpgt	"Jh,Jg,Jf,Ji1"
	sfpgt L0,L0,0,0
	sfpgt L7,L15,4095,1

	#sfpmul24	"Je,Ja,Jb,Ji1"
	sfpmul24 L0,L0,L0,0
	sfpmul24 L0,L0,L0,1
	sfpmul24 L0,L0,L0,4
	sfpmul24 L0,L0,L0,5
	sfpmul24 L7,L0,L0,0
	sfpmul24 L0,L15,L0,0
	sfpmul24 L0,L0,L15,0

	#sfple	"Jh,Jg,Jf,Ji1"
	sfple L0,L0,0,0
	sfple L7,L15,4095,1

	#ttadddmareg	"Js4,Js3,Js2,Js1"
	ttadddmareg 0,0,0,0
	ttadddmareg 1,63,63,63

	#ttsubdmareg	"Js4,Js3,Js2,Js1"
	ttsubdmareg 0,0,0,0
	ttsubdmareg 1,63,63,63

	#ttmuldmareg	"Js4,Js3,Js2,Js1"
	ttmuldmareg 0,0,0,0
	ttmuldmareg 1,63,63,63

	#ttsetdmareg	"Js6,Js7,Js8,Js9"
	ttsetdmareg 0,0,0,0
	ttsetdmareg 3,16383,1,127

	#ttshiftdmareg	"Js4,Js5,Js3,Js2,Js1"
	ttshiftdmareg 0,0,0,0,0
	ttshiftdmareg 1,31,63,63,63

	#ttcmpdmareg	"Js4,Js5,Js3,Js2,Js1"
	ttcmpdmareg 0,0,0,0,0
	ttcmpdmareg 1,31,63,63,63

	#ttbitwopdmareg	"Js4,Js5,Js3,Js2,Js1"
	ttbitwopdmareg 0,0,0,0,0
	ttbitwopdmareg 1,31,63,63,63

	#ttaddrcrxy	"Jsa,Jsb,Jsc,Jsd,Jse,Jsf"
	ttaddrcrxy 0,0,0,0,0,0
	ttaddrcrxy 7,63,7,7,7,63

	#ttaddrcrzw	"Jsa,Jsb,Jsc,Jsd,Jse,Jsf"
	ttaddrcrzw 0,0,0,0,0,0
	ttaddrcrzw 7,63,7,7,7,63

	#ttapool3s1	"Jss,Jsh,Jsi,Jsj"
	ttapool3s1 0,0,0,0
	ttapool3s1 3,127,1,16383

	#ttapool3s2	"Jss,Jsh,Jsi,Jsj"
	ttapool3s2 0,0,0,0
	ttapool3s2 3,127,1,16383

	#ttatcas	"Jsk,Jsl,Jw1,Jsn,Jso,Jsp"
	ttatcas 0,0,0,0,0,0
	ttatcas 1,15,511,3,63,63

	#ttatgetm	"Jsr"
	ttatgetm 0
	ttatgetm 16777215

	#ttatincget	"Jsk,Jsm,Jsn,Jso,Jsp"
	ttatincget 0,0,0,0,0
	ttatincget 1,15,3,63,63

	#ttatincgetptr	"Jsk,Jsq,Jsl,Jw1,Jsn,Jso,Jsp"
	ttatincgetptr 0,0,0,0,0,0,0
	ttatincgetptr 1,1,15,511,3,63,63

	#ttatrelm	"Jsr"
	ttatrelm 0
	ttatrelm 16777215

	#ttatswap	"Jsk,Jsm,Jso,Jsp"
	ttatswap 0,0,0,0
	ttatswap 1,15,63,63

	#ttcleardvalid	"Jss,Jst"
	ttcleardvalid 0,0
	ttcleardvalid 3,4194303

	#ttclrexphist	""
	ttclrexphist

	#ttconv3s1	"Jss,Jsu,Jxa4,Jxa5"
	ttconv3s1 0,0,0,0
	ttconv3s1 3,63,7,16383

	#ttconv3s2	"Jss,Jsu,Jxa4,Jxa5"
	ttconv3s2 0,0,0,0
	ttconv3s2 3,63,7,16383

	#ttdmanop	""
	ttdmanop

	#ttdotpv	"wss,wsx,wsy,Jxa0,Jxa5"
	ttdotpv 0,0,0,0,0
	ttdotpv 3,1,3,31,16383

	#ttelwadd	"wss,wsx,wsy,Jxa0,Jxa5"
	ttelwadd 0,0,0,0,0
	ttelwadd 3,1,3,31,16383

	#ttelwmul	"wss,wsx,wsy,Jxa0,Jxa5"
	ttelwmul 0,0,0,0,0
	ttelwmul 3,1,3,31,16383

	#ttelwsub	"wss,wsx,wsy,Jxa0,Jxa5"
	ttelwsub 0,0,0,0,0
	ttelwsub 3,1,3,31,16383

	#ttflushdma	"Jt0"
	ttflushdma 0
	ttflushdma 16777215

	#ttgapool	"Jss,Jt1,Jsz,Jt2,Jsj"
	ttgapool 0,0,0,0,0
	ttgapool 3,7,15,1,16383

	#ttgatesrcrst	"Jt3,Jt4"
	ttgatesrcrst 0,0
	ttgatesrcrst 8388607,1

	#ttgmpool	"Jss,Jt1,Jsz,Jt2,Jsj"
	ttgmpool 0,0,0,0,0
	ttgmpool 3,7,15,1,16383

	#ttincadcxy	"Jsa,Jsb,Jsc,Jsd,Jse"
	ttincadcxy 0,0,0,0,0
	ttincadcxy 7,63,7,7,7

	#ttincadczw	"Jsa,Jsb,Jsc,Jsd,Jse"
	ttincadczw 0,0,0,0,0
	ttincadczw 7,63,7,7,7

	#ttloadind	"Jt9,Jta,Jtb,Jso,Jsp"
	ttloadind 0,0,0,0,0
	ttloadind 3,255,3,63,63

	#ttloadreg	"Jtc,Jtd"
	ttloadreg 0,0
	ttloadreg 15,16383

	#ttmfconv3s1	"wss,wte,Jxa4,Jxa5"
	ttmfconv3s1 0,0,0,0
	ttmfconv3s1 3,31,7,16383

	#ttmop	"Jtf,Jtg,Jth"
	ttmop 0,0,0
	ttmop 1,127,32767

	#ttmopcfg	"Jti"
	ttmopcfg 0
	ttmopcfg 16777215

	#ttmova2d	"Jtj,Jtk,Jxa4,Jxa6,Jtm"
	ttmova2d 0,0,0,0,0
	ttmova2d 1,63,7,3,4095

	#ttmovb2a	"Jtn,Jxa7,Jxa6,wto"
	ttmovb2a 0,0,0,0
	ttmovb2a 7,7,3,4095

	#ttmovb2d	"Jtj,Jtk,Jxa4,Jtl,Jxaa"
	ttmovb2d 0,0,0,0,0
	ttmovb2d 1,63,7,7,2047

	#ttmovd2a	"Jtj,Jtk,Jxa4,Jxa6,Jtm"
	ttmovd2a 0,0,0,0,0
	ttmovd2a 1,63,7,3,1

	#ttmovd2b	"Jtj,Jtk,Jxa4,Jxa6,Jtm"
	ttmovd2b 0,0,0,0,0
	ttmovd2b 1,63,7,3,1

	#ttmovdbga2d	"Jtj,Jtk,Jxa4,Jxa6,Jtm"
	ttmovdbga2d 0,0,0,0,0
	ttmovdbga2d 1,63,7,3,1

	#ttmpool3s1	"Jss,Jsh,Jsi,Jsj"
	ttmpool3s1 0,0,0,0
	ttmpool3s1 3,127,1,16383

	#ttmpool3s2	"Jss,Jsh,Jsi,Jsj"
	ttmpool3s2 0,0,0,0
	ttmpool3s2 3,127,1,16383

	#ttmvmul	"Jss,Jt1,Jxa0,Jxa5"
	ttmvmul 0,0,0,0
	ttmvmul 3,7,31,16383

	#ttpacr	"Jxab,Jxac,Jxad,Jxae,Jxaf,Jxag,Jxah,Jxai,Jxaj,Jxak,Jxal,Jxam"
	ttpacr 0,0,0,0,0,0,0,0,0,0,0,0
	ttpacr 7,7,1,3,3,1,15,1,7,3,1,1

	#ttpacrsetreg	"Jxan,Jxao,Jxap,Jxaq,Jxar,Jxas,Jxal,Jxam"
	ttpacrsetreg 0,0,0,0,0,0,0,0
	ttpacrsetreg 1,1,1023,3,3,63,1,1

	#ttrareb	""
	ttrareb

	#ttrdcfg	"Ju1,Ju2"
	ttrdcfg 0,0
	ttrdcfg 255,32767

	#ttreg2flop	"Jt9,Ju3,Ju4,Ju5,Ju6,Ju7"
	ttreg2flop 0,0,0,0,0,0
	ttreg2flop 3,3,3,3,767,63

	#ttrmwcib0	"Juc,Jud,Jue"
	ttrmwcib0 0,0,0
	ttrmwcib0 255,255,255

	#ttrmwcib1	"Juc,Jud,Jue"
	ttrmwcib1 0,0,0
	ttrmwcib1 255,255,255

	#ttrmwcib2	"Juc,Jud,Jue"
	ttrmwcib2 0,0,0
	ttrmwcib2 255,255,255

	#ttrmwcib3	"Juc,Jud,Jue"
	ttrmwcib3 0,0,0
	ttrmwcib3 255,255,255

	#ttrstdma	""
	ttrstdma

	#ttsemget	"Juf"
	ttsemget 0
	ttsemget 3145727

	#ttseminit	"Jug,Juh,Jui"
	ttseminit 0,0,0
	ttseminit 63,63,12287

	#ttsempost	"Juf"
	ttsempost 0
	ttsempost 3145727

	#ttsemwait	"Juj,Juk,Jul"
	ttsemwait 0,0,0
	ttsemwait 511,8191,3

	#ttsetadc	"Jsa,Jum,Jun,Juo"
	ttsetadc 0,0,0,0
	ttsetadc 7,1,3,16383

	#ttsetadcxx	"Jsa,Jup,Juq"
	ttsetadcxx 0,0,0
	ttsetadcxx 7,2047,1023

	#ttsetadcxy	"Jsa,Jsb,Jsc,Jsd,Jse,Jur"
	ttsetadcxy 0,0,0,0,0,0
	ttsetadcxy 7,63,7,7,7,63

	#ttsetadczw	"Jsa,Jsb,Jsc,Jsd,Jse,Jur"
	ttsetadczw 0,0,0,0,0,0
	ttsetadczw 7,63,7,7,7,63

	#ttsetashrmh	"Jus,Jut"
	ttsetashrmh 0,0
	ttsetashrmh 8388607,1

	#ttsetashrmh0	"Jus,Jut"
	ttsetashrmh0 0,0
	ttsetashrmh0 8388607,1

	#ttsetashrmh1	"Jus,Jut"
	ttsetashrmh1 0,0
	ttsetashrmh1 8388607,1

	#ttsetashrmv	"Juu"
	ttsetashrmv 0
	ttsetashrmv 16777215

	#ttsetc16	"Juv,Juw"
	ttsetc16 0,0
	ttsetc16 255,65535

	#ttsetdvalid	"Juw"
	ttsetdvalid 0
	ttsetdvalid 65535

	#ttsetibrwc	"Jt5,Juy,Juz"
	ttsetibrwc 0,0,0
	ttsetibrwc 15,4095,63

	#ttsetpkedgof	"Jv0,Jv1,Jv2,Jw2"
	ttsetpkedgof 0,0,0,0
	ttsetpkedgof 4095,15,15,15

	#ttsetrwc	"Jv3,Jt5,Jt6,Jt7,Jt8,Jur"
	ttsetrwc 0,0,0,0,0,0
	ttsetrwc 3,15,15,15,15,63

	#ttsfploadmacro	"Jv4,Jv5,Js2,Js1"
	ttsfploadmacro 0,0,0,0
	ttsfploadmacro 15,15,63,63

	#ttshiftxa	"Jv8,Jv9"
	ttshiftxa 0,0
	ttshiftxa 262143,3

	#ttshiftxb	"Jxat,Jxau,Jvb"
	ttshiftxb 0,0,0
	ttshiftxb 1023,15,1023

	#ttstallwait	"Juj,Jvc"
	ttstallwait 0,0
	ttstallwait 511,255

	#ttstoreind	"Jsk,Jvd,Jve,Jvf,Jtb,Jso,Jsp"
	ttstoreind 0,0,0,0,0,0,0
	ttstoreind 1,1,1,127,3,63,63

	#ttstorereg	"Jtc,Jtd"
	ttstorereg 0,0
	ttstorereg 15,16383

	#tttbufcmd	""
	tttbufcmd

	#tttrnspsrca	""
	tttrnspsrca

	#tttrnspsrcb	""
	tttrnspsrcb

	#ttunpacr	"Jxba,Jxbb,Jxbc,Jxbd,Jxbe,Jxbf,Jxbg,Jxbh,Jxbi,Jxbj,Jxbk,Jxbl,Jxam"
	ttunpacr 0,0,0,0,0,0,0,0,0,0,0,0,0
 	ttunpacr 1,255,3,7,3,1,1,1,1,1,1,1,1

	#ttunpacrnop	"Jxbm,Jxbn,Jxbo,Jxbp,Jxbq,Jxbr,Jxbs,Jxbt,Jxbu"
	ttunpacrnop 0,0,0,0,0,0,0,0,0
	ttunpacrnop 1,127,15,15,3,1,1,3,3

	#ttwrcfg	"Ju1,Jvs,Jvt"
	ttwrcfg 0,0,0
	ttwrcfg 255,1,32767

	#ttxmov	"Jvu,Jvv"
	ttxmov 0,0
	ttxmov 1,8388607

	#ttzeroacoc	"Jvw,Jxc0,Jxc1,Jxc2,Jxc3"
	ttzeroacc 0,0,0,0,0
	ttzeroacc 31,1,1,7,16383

	#ttzerosrc	"Jvx,Jvy,Jvz,Jw0"
	ttzerosrc 0,0,0,0
	ttzerosrc 1048575,1,1,3

	#ttcfgshiftmask	"Jxav,Jxaw,Jxax,Jxay,Jxaz,Jxbv"
	ttcfgshiftmask 0,0,0,0,0,0
	ttcfgshiftmask 1,7,31,31,3,255

	#ttmovdbgb2d	"Jtj,Jtk,Jxa4,Jxc4,Jxaa"
	ttmovdbgb2d 0,0,0,0,0
	ttmovdbgb2d 1,63,7,7,2047

	#ttresourcedecl	"Jxbw,Jxbx,Jxby"
	ttresourcedecl 0,0,0
	ttresourcedecl 2047,511,15

	#ttstreamwait	"Juj,Jxbz,Jxb0,Jxb1"
	ttstreamwait 0,0,0,0
	ttstreamwait 511,2047,1,7

	#ttstreamwrcfg	"Jxb2,Jxb3,Jxb4"
	ttstreamwrcfg 0,0,0
	ttstreamwrcfg 7,1023,2047
