	.attribute arch, "rv32i2p0_xtttensixwh"

	# sfpload	"Jd1,Jq,Jm1,Jp"
	sfpload L0,0,0,0
	sfpload L7,0,0,0
	sfpload L0,-0x2000,0,0
	sfpload L0,0x1fff,0,0
	sfpload L0,0x3fff,0,0
	sfpload L0,0,1,0
	sfpload L0,0,2,0
	sfpload L0,0,3,0
	sfpload L0,0,4,0
	sfpload L0,0,5,0
	sfpload L0,0,6,0
	sfpload L0,0,7,0
	sfpload L0,0,8,0
	sfpload L0,0,9,0
	sfpload L0,0,10,0
	sfpload L0,0,12,0
	sfpload L0,0,13,0
	sfpload L0,0,14,0
	sfpload L0,0,15,0
	sfpload L0,0,0,3

	# sfploadi	"Jd1,Jn,Jm1"
	sfploadi L0,-32768,0
	sfploadi L3,-8192,4
	sfploadi L4,8191,8
	sfploadi L7,32767,10

	# sfpstore	"Jq,Jd2,Jm1,Jp"
	sfpstore 0,L0,0,0
	sfpstore 0,L15,0,0
	sfpstore -0x2000,L0,0,0
	sfpstore 0x1fff,L0,0,0
	sfpstore 0x3fff,L0,0,0
	sfpstore 0,L0,1,0
	sfpstore 0,L0,2,0
	sfpstore 0,L0,3,0
	sfpstore 0,L0,4,0
	sfpstore 0,L0,5,0
	sfpstore 0,L0,6,0
	sfpstore 0,L0,7,0
	sfpstore 0,L0,8,0
	sfpstore 0,L0,9,0
	sfpstore 0,L0,10,0
	sfpstore 0,L0,12,0
	sfpstore 0,L0,13,0
	sfpstore 0,L0,14,0
	sfpstore 0,L0,15,0
	sfpstore 0,L0,0,3

	# sfplut	"Jd1,Jm3"
	sfplut L0,0
	sfplut L7,4

	# sfpmuli	"Jh,Jj,Ji3"
	sfpmuli L0,0,0
	sfpmuli L7,65535,0

	# sfpaddi	"Jh,Jj,Ji3"
	sfpaddi L0,0,0
	sfpaddi L7,65535,0

	# sfpdivp2	"Jh,Jg,Jf,Ji2"
	sfpdivp2 L0,L0,0,0
	sfpdivp2 L7,L0,0,0
	sfpdivp2 L0,L15,0,0
	sfpdivp2 L0,L0,0,1
	sfpdivp2 L0,L0,-1,0
	sfpdivp2 L0,L0,-0x800,0
	sfpdivp2 L0,L0,+0x7ff,0

	# sfpexexp	"Jh,Jg,Ji4"
	sfpexexp L0,L0,0
	sfpexexp L3,L7,3
	sfpexexp L4,L8,8
	sfpexexp L7,L15,11

	# sfpexman	"Jh,Jg,Ji2"
	sfpexman L0,L0,0
	sfpexman L7,L15,1

	# sfpiadd	"Jh,Jg,Jf,Ji5"
	sfpiadd L0,L0,0,0
	sfpiadd L7,L0,0,0
	sfpiadd L0,L15,0,0
	sfpiadd L0,L0,0,1
	sfpiadd L0,L0,0,2
	sfpiadd L0,L0,0,4
	sfpiadd L0,L0,0,5
	sfpiadd L0,L0,0,6
	sfpiadd L0,L0,0,8
	sfpiadd L0,L0,0,9
	sfpiadd L0,L0,0,10
	sfpiadd L0,L0,0,12
	sfpiadd L0,L0,0,13
	sfpiadd L0,L0,0,14
	sfpiadd L0,L0,-0x800,1
	sfpiadd L0,L0,0x7ff,1

	# sfpshft	"Jh,Jg,Jf,Ji2"
	sfpshft L0,L0,0,0
	sfpshft L7,L0,0,0
	sfpshft L0,L15,0,0
	sfpshft L0,L0,0,1
	sfpshft L0,L0,-1,1
	sfpshft L0,L0,-0x800,1
	sfpshft L0,L0,+0x7ff,1

	# sfpabs	"Jh,Jg,Ji2"
	sfpabs L0,L0,0
	sfpabs L7,L15,1

	# sfpand	"Jh,Jg"
	sfpand L0,L15

	# sfpor	"Jh,Jg"
	sfpor L7,L0

	# sfpnot	"Jh,Jg"
	sfpnot L4,L8

	# sfplz	"Jh,Jg,Ji6"
	sfplz L0,L0,0
	sfplz L7,L15,14

	# sfpsetexp	"Jh,Jg,Jf,Ji2"
	sfpsetexp L0,L0,0,0
	sfpsetexp L7,L0,0,0
	sfpsetexp L0,L15,0,0
	sfpsetexp L0,L0,0,1
	sfpsetexp L0,L0,0,2
	sfpsetexp L0,L0,4095,1

	# sfpsetman	"Jh,Jg,Jf,Ji2"
	sfpsetman L0,L0,0,0
	sfpsetman L7,L0,0,0
	sfpsetman L0,L15,0,0
	sfpsetman L0,L0,0,1
	sfpsetman L0,L0,4095,1

	# sfpsetsgn	"Jh,Jg,Jf,Ji2"
	sfpsetsgn L0,L0,0,0
	sfpsetsgn L7,L0,0,0
	sfpsetsgn L0,L15,0,0
	sfpsetsgn L0,L0,0,1
	sfpsetsgn L0,L0,4095,1

	# sfpmad	"Je,Ja,Jb,Jc,Jo"
	sfpmad L0,L0,L15,L0,0
	sfpmad L7,L15,L0,L15,0

	# sfpadd	"Je,Ja,Jb,Jc,Jo"
	sfpadd L0,L0,L15,L0,0
	sfpadd L7,L15,L0,L15,0

	# sfpmul	"Je,Ja,Jb,Jc,Jo"
	sfpmul L0,L0,L15,L0,0
	sfpmul L7,L15,L0,L15,0

	# sfpencc	"Jf,Ji6"
	sfpencc 0,0
	sfpencc 0,1
	sfpencc 0,2
	sfpencc 4095,2
	sfpencc 0,8
	sfpencc 0,9
	sfpencc 0,10

	# sfpcompc	""
	sfpcompc

	# sfppushc	"Ji1"
	sfppushc 0
	sfppushc 15

	# sfppopc	"Ji1"
	sfppopc 0
	sfppopc 15

	# sfpsetcc	"Jg,Jf,Ji1"
	sfpsetcc L0,0,0
	sfpsetcc L7,0,0
	sfpsetcc L0,0,15
	sfpsetcc L0,4095,1

	# sfpmov	"Jh,Jg,Ji2"
	sfpmov L0,L0,0
	sfpmov L7,L0,0
	sfpmov L0,L15,0
	sfpmov L0,L0,1
	sfpmov L0,L0,2
	sfpmov L0,L0,8

	# ttnop	""
	ttnop

	# sfpnop	""
	sfpnop

	# ttincrwc	"Jk1,Jk2,Jk3,Jk4"
	ttincrwc 0,0,0,0
	ttincrwc 63,15,15,15

	# ttreplay	"Jl1,Jl2,Jl3,Jl4"
	ttreplay 0,0,0,0
	ttreplay 1023,1023,7,1

	# sfpxor	"Jh,Jg"
	sfpxor L4,L8

	# sfpcast	"Je,Jc,Ji2"
	sfpcast L0,L0,0
	sfpcast L7,L15,1

	# sfpshft2	"Je,Jc,Jf,Ji2"
	sfpshft2 L0,L0,0,0
	sfpshft2 L7,L0,0,0
	sfpshft2 L0,L15,0,0
	sfpshft2 L0,L0,0,1
	sfpshft2 L0,L0,0,2
	sfpshft2 L0,L0,0,3
	sfpshft2 L0,L0,0,4
	sfpshft2 L0,L0,0,5
	sfpshft2 L0,L0,0,6

	# sfpconfig	"Jh,Jj,Ji7"
	sfpconfig 0,0,0
	sfpconfig 8,65535,8
	sfpconfig 11,0,12
	sfpconfig 15,65535,14

	# sfpswap	"Jh,Jg,Ji8"
	sfpswap L0,L15,0
	sfpswap L7,L0,1

	# sfplutfp32	"Je,Jo"
	sfplutfp32 L0,0
	sfplutfp32 L7,14

	# sfptransp	""
	sfptransp

	# sfploadmacro	"Jd,Jq,Jm1,Jp"
	sfploadmacro L0,0,0,0
	sfploadmacro L3,8191,9,3

	# sfpstochrnd	"Je,Jb,Jc,Ji1,Jr1,Jr2"
	sfpstochrnd L0,L0,L0,0,0,0
	sfpstochrnd L7,L15,L15,1,1,31

	# ttadddmareg	"Js4,Js3,Js2,Js1"
	ttadddmareg 0,0,0,0
	ttadddmareg 1,63,63,63

	# ttsubdmareg	"Js4,Js3,Js2,Js1"
	ttsubdmareg 0,0,0,0
	ttsubdmareg 1,63,63,63

	# ttmuldmareg	"Js4,Js3,Js2,Js1"
	ttmuldmareg 0,0,0,0
	ttmuldmareg 1,63,63,63

	# ttsetdmareg	"Js6,Js7,Js8,Js9"
	ttsetdmareg 0,0,0,0
	ttsetdmareg 3,16383,1,127

	# ttshiftdmareg	"Js4,Js5,Js3,Js2,Js1"
	ttshiftdmareg 0,0,0,0,0
	ttshiftdmareg 1,31,63,63,63

	# ttcmpdmareg	"Js4,Js5,Js3,Js2,Js1"
	ttcmpdmareg 0,0,0,0,0
	ttcmpdmareg 1,31,63,63,63

	# ttbitwopdmareg	"Js4,Js5,Js3,Js2,Js1"
	ttbitwopdmareg 0,0,0,0,0
	ttbitwopdmareg 1,31,63,63,63

	# ttaddrcrxy	"Jsa,Jsb,Jsc,Jsd,Jse,Jsf"
	ttaddrcrxy 0,0,0,0,0,0
	ttaddrcrxy 7,63,7,7,7,63

	# ttaddrcrzw	"Jsa,Jsb,Jsc,Jsd,Jse,Jsf"
	ttaddrcrzw 0,0,0,0,0,0
	ttaddrcrzw 7,63,7,7,7,63

	# ttapool3s1	"Jss,Jsh,Jsi,Jsj"
	ttapool3s1 0,0,0,0
	ttapool3s1 3,127,1,16383

	# ttapool3s2	"Jss,Jsh,Jsi,Jsj"
	ttapool3s2 0,0,0,0
	ttapool3s2 3,127,1,16383

	# ttatcas	"Jsk,Jsl,Jw1,Jsn,Jso,Jsp"
	ttatcas 0,0,0,0,0,0
	ttatcas 1,15,511,3,63,63

	# ttatgetm	"Jsr"
	ttatgetm 0
	ttatgetm 16777215

	# ttatincget	"Jsk,Jsm,Jsn,Jso,Jsp"
	ttatincget 0,0,0,0,0
	ttatincget 1,15,3,63,63

	# ttatincgetptr	"Jsk,Jsq,Jsl,Jw1,Jsn,Jso,Jsp"
	ttatincgetptr 0,0,0,0,0,0,0
	ttatincgetptr 1,1,15,511,3,63,63

	# ttatrelm	"Jsr"
	ttatrelm 0
	ttatrelm 16777215

	# ttatswap	"Jsk,Jsm,Jso,Jsp"
	ttatswap 0,0,0,0
	ttatswap 1,15,63,63

	# ttcleardvalid	"Jss,Jst"
	ttcleardvalid 0,0
	ttcleardvalid 3,4194303

	# ttclrexphist	""
	ttclrexphist

	# ttconv3s1	"Jss,Jsu,Jsv,Jsw"
	ttconv3s1 0,0,0,0
	ttconv3s1 3,63,3,16383

	# ttconv3s2	"Jss,Jsu,Jsv,Jsw"
	ttconv3s2 0,0,0,0
	ttconv3s2 3,63,3,16383

	# ttdmanop	""
	ttdmanop

	# ttdotpv	"Jss,Jsx,Jsy,Jsz,Jsw"
	ttdotpv 0,0,0,0,0
	ttdotpv 3,1,3,15,16383

	# ttelwadd	"Jss,Jsx,Jsy,Jsz,Jsw"
	ttelwadd 0,0,0,0,0
	ttelwadd 3,1,3,15,16383

	# ttelwmul	"Jss,Jsx,Jsy,Jsz,Jsw"
	ttelwmul 0,0,0,0,0
	ttelwmul 3,1,3,15,16383

	# ttelwsub	"Jss,Jsx,Jsy,Jsz,Jsw"
	ttelwsub 0,0,0,0,0
	ttelwsub 3,1,3,15,16383

	# ttflushdma	"Jt0"
	ttflushdma 0
	ttflushdma 16777215

	# ttgapool	"Jss,Jt1,Jsz,Jt2,Jsj"
	ttgapool 0,0,0,0,0
	ttgapool 3,7,15,1,16383

	# ttgatesrcrst	"Jt3,Jt4"
	ttgatesrcrst 0,0
	ttgatesrcrst 8388607,1

	# ttgmpool	"Jss,Jt1,Jsz,Jt2,Jsj"
	ttgmpool 0,0,0,0,0
	ttgmpool 3,7,15,1,16383

	# ttincadcxy	"Jsa,Jsb,Jsc,Jsd,Jse"
	ttincadcxy 0,0,0,0,0
	ttincadcxy 7,63,7,7,7

	# ttincadczw	"Jsa,Jsb,Jsc,Jsd,Jse"
	ttincadczw 0,0,0,0,0
	ttincadczw 7,63,7,7,7

	# ttloadind	"Jt9,Jta,Jtb,Jso,Jsp"
	ttloadind 0,0,0,0,0
	ttloadind 3,255,3,63,63

	# ttloadreg	"Jtc,Jtd"
	ttloadreg 0,0
	ttloadreg 15,16383

	# ttmfconv3s1	"Jss,Jte,Jsv,Jsw"
	ttmfconv3s1 0,0,0,0
	ttmfconv3s1 3,31,3,16383

	# ttmop	"Jtf,Jtg,Jth"
	ttmop 0,0,0
	ttmop 1,127,32767

	# ttmopcfg	"Jti"
	ttmopcfg 0
	ttmopcfg 16777215

	# ttmova2d	"Jtj,Jtk,Jsv,Jtl,Jtm"
	ttmova2d 0,0,0,0,0
	ttmova2d 1,63,3,3,4095

	# ttmovb2a	"Jtn,Jsv,Jtl,Jto"
	ttmovb2a 0,0,0,0
	ttmovb2a 7,3,3,4095

	# ttmovb2d	"Jtj,Jtk,Jsv,Jtl,Jtm"
	ttmovb2d 0,0,0,0,0
	ttmovb2d 1,63,3,7,2047

	# ttmovd2a	"Jtj,Jtk,Jsv,Jtl,Jtm"
	ttmovd2a 0,0,0,0,0
	ttmovd2a 1,63,3,3,1

	# ttmovd2b	"Jtj,Jtk,Jsv,Jtl,Jtm"
	ttmovd2b 0,0,0,0,0
	ttmovd2b 1,63,3,3,1

	# ttmovdbga2d	"Jtj,Jtk,Jsv,Jtl,Jtm"
	ttmovdbga2d 0,0,0,0,0
	ttmovdbga2d 1,63,3,7,1

	# ttmpool3s1	"Jss,Jsh,Jsi,Jsj"
	ttmpool3s1 0,0,0,0
	ttmpool3s1 3,127,1,16383

	# ttmpool3s2	"Jss,Jsh,Jsi,Jsj"
	ttmpool3s2 0,0,0,0
	ttmpool3s2 3,127,1,16383

	# ttmvmul	"Jss,Jt1,Jsz,Jsw"
	ttmvmul 0,0,0,0
	ttmvmul 3,7,15,16383

	# ttpacr	"Jtp,Jtq,Jty,Jtr,Jts,Jtt,Jtu"
	ttpacr 0,0,0,0,0,0,0
	ttpacr 7,7,1,1,1,1,1

	# ttpacrsetreg	"Jtv,Jtw,Jtx,Jty,Jtz,Ju0,Jtu"
	ttpacrsetreg 0,0,0,0,0,0,0
	ttpacrsetreg 1,1,1023,3,3,1,1

	# ttrareb	""
	ttrareb

	# ttrdcfg	"Ju1,Ju2"
	ttrdcfg 0,0
	ttrdcfg 255,32767

	# ttreg2flop	"Jt9,Ju3,Ju4,Ju5,Ju6,Ju7"
	ttreg2flop 0,0,0,0,0,0
	ttreg2flop 3,3,3,3,767,63

	# ttrmwcib0	"Juc,Jud,Jue"
	ttrmwcib0 0,0,0
	ttrmwcib0 255,255,255

	# ttrmwcib1	"Juc,Jud,Jue"
	ttrmwcib1 0,0,0
	ttrmwcib1 255,255,255

	# ttrmwcib2	"Juc,Jud,Jue"
	ttrmwcib2 0,0,0
	ttrmwcib2 255,255,255

	# ttrmwcib3	"Juc,Jud,Jue"
	ttrmwcib3 0,0,0
	ttrmwcib3 255,255,255

	# ttrstdma	""
	ttrstdma

	# ttsemget	"Juf"
	ttsemget 0
	ttsemget 3145727

	# ttseminit	"Jug,Juh,Jui"
	ttseminit 0,0,0
	ttseminit 63,63,12287

	# ttsempost	"Juf"
	ttsempost 0
	ttsempost 3145727

	# ttsemwait	"Juj,Juk,Jul"
	ttsemwait 0,0,0
	ttsemwait 511,8191,3

	# ttsetadc	"Jsa,Jum,Jun,Juo"
	ttsetadc 0,0,0,0
	ttsetadc 7,1,3,16383

	# ttsetadcxx	"Jsa,Jup,Juq"
	ttsetadcxx 0,0,0
	ttsetadcxx 7,2047,1023

	# ttsetadcxy	"Jsa,Jsb,Jsc,Jsd,Jse,Jur"
	ttsetadcxy 0,0,0,0,0,0
	ttsetadcxy 7,63,7,7,7,63

	# ttsetadczw	"Jsa,Jsb,Jsc,Jsd,Jse,Jur"
	ttsetadczw 0,0,0,0,0,0
	ttsetadczw 7,63,7,7,7,63

	# ttsetashrmh	"Jus,Jut"
	ttsetashrmh 0,0
	ttsetashrmh 8388607,1

	# ttsetashrmh0	"Jus,Jut"
	ttsetashrmh0 0,0
	ttsetashrmh0 8388607,1

	# ttsetashrmh1	"Jus,Jut"
	ttsetashrmh1 0,0
	ttsetashrmh1 8388607,1

	# ttsetashrmv	"Juu"
	ttsetashrmv 0
	ttsetashrmv 16777215

	# ttsetc16	"Juv,Juw"
	ttsetc16 0,0
	ttsetc16 255,65535

	# ttsetdvalid	"Juw"
	ttsetdvalid 0
	ttsetdvalid 65535

	# ttsetibrwc	"Jt5,Juy,Juz"
	ttsetibrwc 0,0,0
	ttsetibrwc 15,4095,63

	# ttsetpkedgof	"Jv0,Jv1,Jv2,Jw2"
	ttsetpkedgof 0,0,0,0
	ttsetpkedgof 4095,15,15,15

	# ttsetrwc	"Jv3,Jt5,Jt6,Jt7,Jt8,Jur"
	ttsetrwc 0,0,0,0,0,0
	ttsetrwc 3,15,15,15,15,63

	# ttsfploadmacro	"Jv4,Jv5,Jv6,Jv7"
	ttsfploadmacro 0,0,0,0
	ttsfploadmacro 15,15,3,63

	# ttshiftxa	"Jv8,Jv9"
	ttshiftxa 0,0
	ttshiftxa 262143,3

	# ttshiftxb	"Jtp,Jva,Jvb"
	ttshiftxb 0,0,0
	ttshiftxb 511,15,1023

	# ttstallwait	"Juj,Jvc"
	ttstallwait 0,0
	ttstallwait 511,255

	# ttstoreind	"Jsk,Jvd,Jve,Jvf,Jtb,Jso,Jsp"
	ttstoreind 0,0,0,0,0,0,0
	ttstoreind 1,1,1,127,3,63,63

	# ttstorereg	"Jtc,Jtd"
	ttstorereg 0,0
	ttstorereg 15,16383

	# tttbufcmd	""
	tttbufcmd

	# tttrnspsrca	""
	tttrnspsrca

	# tttrnspsrcb	""
	tttrnspsrcb

	# ttunpacr	"Jvg,Jvh,Jvi,Jvj,Jvk,Jtr,Jvl,Jvm,Jvn,Jvo,Jvp,Jvq,Jt4"
	ttunpacr 0,0,0,0,0,0,0,0,0,0,0,0,0
 	ttunpacr 1,255,3,7,3,1,1,1,1,1,1,1,1

	# ttunpacrnop	"Jvg,Jvr"
	ttunpacrnop 0,0
	ttunpacrnop 1,1023

	# ttwrcfg	"Ju1,Jvs,Jvt"
	ttwrcfg 0,0,0
	ttwrcfg 255,1,32767

	# ttxmov	"Jvu,Jvv"
	ttxmov 0,0
	ttxmov 1,8388607

	# ttzeroacc	"Jvw,Jsz,Jsw"
	ttzeroacc 0,0,0
	ttzeroacc 31,7,16383

	# ttzerosrc	"Jvx,Jvy,Jvz,Jw0"
	ttzerosrc 0,0,0,0
	ttzerosrc 1048575,1,1,3
