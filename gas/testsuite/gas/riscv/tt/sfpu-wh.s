	.attribute arch, "rv32i2p0_xttwh"

	# sfpload	"wd1,wq,wm1,wp"
	sfpload L0,0,0,0
	sfpload L7,8191,15,3

	# sfploadi	"wd1,wn,wm1"
	sfploadi L0,-32768,0
	sfploadi L3,-8192,4
	sfploadi L4,8191,8
	sfploadi L7,32767,10

	# sfpstore	"wq,wd2,wm1,wp"
	sfpstore -4096,L0,0,0
	sfpstore 8191,L15,10,3

	# sfplut	"wd1,wm3"
	sfplut L0,0
	sfplut L7,4

	# sfpmuli	"wh,wj,wi3"
	sfpmuli L0,0,0
	sfpmuli L7,65535,0

	# sfpaddi	"wh,wj,wi3"
	sfpaddi L0,0,0
	sfpaddi L7,65535,0

	# sfpdivp2	"wh,wg,wf,wi2"
	sfpdivp2 L0,L0,-16384,0
	sfpdivp2 L7,L15,16383,0
	sfpdivp2 L0,L0,-2048,1
	sfpdivp2 L7,L15,2047,1

	# sfpexexp	"wh,wg,wi4"
	sfpexexp L0,L0,0
	sfpexexp L3,L7,3
	sfpexexp L4,L8,8
	sfpexexp L7,L15,11

	# sfpexman	"wh,wg,wi2"
	sfpexman L0,L0,0
	sfpexman L7,L15,1

	# sfpiadd	"wh,wg,wf,wi5"
	sfpiadd L0,L0,0,0
	sfpiadd L1,L2,4095,2
	sfpiadd L2,L4,-2048,4
	sfpiadd L3,L6,2047,6
	sfpiadd L4,L9,-2048,8
	sfpiadd L5,L11,2047,10
	sfpiadd L6,L13,-2048,12
	sfpiadd L7,L15,2047,14

	# sfpshft	"wh,wg,wf,wi2"
	sfpshft L0,L0,0,0
	sfpshft L3,L7,4095,0
	sfpshft L4,L8,-2048,1
	sfpshft L7,L15,2047,1

	# sfpabs	"wh,wg,wi2"
	sfpabs L0,L0,0
	sfpabs L7,L15,1

	# sfpand	"wh,wg"
	sfpand L0,L15

	# sfpor	"wh,wg"
	sfpor L7,L0

	# sfpnot	"wh,wg"
	sfpnot L4,L8

	# sfplz	"wh,wg,wi6"
	sfplz L0,L0,0
	sfplz L7,L15,14

	# sfpsetexp	"wh,wg,wf,wi2"
	sfpsetexp L0,L0,0,0
	sfpsetexp L3,L7,4095,0
	sfpsetexp L4,L8,0,1
	sfpsetexp L7,L15,4095,1

	# sfpsetman	"wh,wg,wf,wi2"
	sfpsetman L0,L0,0,0
	sfpsetman L3,L7,4095,0
	sfpsetman L4,L8,0,1
	sfpsetman L7,L15,4095,1

	# sfpsetsgn	"wh,wg,wf,wi2"
	sfpsetsgn L0,L0,0,0
	sfpsetsgn L3,L7,4095,0
	sfpsetsgn L4,L8,0,1
	sfpsetsgn L7,L15,4095,1

	# sfpmad	"we,wa,wb,wc,wo"
	sfpmad L0,L0,L15,L0,0
	sfpmad L7,L15,L0,L15,0

	# sfpadd	"we,wa,wb,wc,wo"
	sfpadd L0,L0,L15,L0,0
	sfpadd L7,L15,L0,L15,0

	# sfpmul	"we,wa,wb,wc,wo"
	sfpmul L0,L0,L15,L0,0
	sfpmul L7,L15,L0,L15,0

	# sfpencc	"wf,wi6"
	sfpencc 4095,0
	sfpencc 4095,2
	sfpencc 4095,8
	sfpencc 4095,10

	# sfpcompc	""
	sfpcompc

	# sfppushc	"wi1"
	sfppushc 0
	sfppushc 15

	# sfppopc	"wi1"
	sfppopc 0
	sfppopc 15

	# sfpsetcc	"wg,wf,wi1"
	sfpsetcc L0,4095,0
	sfpsetcc L15,4095,15

	# sfpmov	"wh,wg,wi2"
	sfpmov L0,L0,0
	sfpmov L7,L15,2
	sfpmov L7,L15,8

	# ttnop	""
	ttnop

	# sfpnop	""
	sfpnop

	# ttincrwc	"wk1,wk2,wk3,wk4"
	ttincrwc 0,0,0,0
	ttincrwc 63,15,15,15

	# ttreplay	"wl1,wl2,wl3,wl4"
	ttreplay 0,0,0,0
	ttreplay 1023,1023,7,1

	# sfpxor	"wh,wg"
	sfpxor L4,L8

	# sfpcast	"we,wc,wi2"
	sfpcast L0,L0,0
	sfpcast L7,L15,1

	# sfpshft2	"we,wc,wi2"
	sfpshft2 L0,L0,0
	sfpshft2 L7,L15,1

	# sfpshft2	"we,wc,wf,wi2"
	sfpshft2 L0,L0,0,0
	sfpshft2 L7,L15,6,1

	# sfpconfig	"wh,wj,wi7"
	sfpconfig 0,0,0
	sfpconfig 8,65535,8
	sfpconfig 11,0,12
	sfpconfig 15,65535,14	

	# sfpswap	"wh,wg,wi8"
	sfpswap L0,L15,0
	sfpswap L7,L0,1

	# sfplutfp32	"we,wo"
	sfplutfp32 L0,0
	sfplutfp32 L7,14

	# sfptransp	""
	sfptransp

	# sfploadmacro	"wd,wq,wm1,wp"
	sfploadmacro L0,0,0,0
	sfploadmacro L3,8191,9,3

	# sfpstochrnd	"we,wb,wc,wi1,wr1,wr2"
	sfpstochrnd L0,L0,L0,0,0,0
	sfpstochrnd L7,L15,L15,1,1,31

	# ttadddmareg	"ws4,ws3,ws2,ws1"
	ttadddmareg 0,0,0,0
	ttadddmareg 1,63,63,63

	# ttsubdmareg	"ws4,ws3,ws2,ws1"
	ttsubdmareg 0,0,0,0
	ttsubdmareg 1,63,63,63

	# ttmuldmareg	"ws4,ws3,ws2,ws1"
	ttmuldmareg 0,0,0,0
	ttmuldmareg 1,63,63,63

	# ttsetdmareg	"ws6,ws7,ws8,ws9"
	ttsetdmareg 0,0,0,0
	ttsetdmareg 3,16383,1,127

	# ttshiftdmareg	"ws4,ws5,ws3,ws2,ws1"
	ttshiftdmareg 0,0,0,0,0
	ttshiftdmareg 1,31,63,63,63

	# ttcmpdmareg	"ws4,ws5,ws3,ws2,ws1"
	ttcmpdmareg 0,0,0,0,0
	ttcmpdmareg 1,31,63,63,63

	# ttbitwopdmareg	"ws4,ws5,ws3,ws2,ws1"
	ttbitwopdmareg 0,0,0,0,0
	ttbitwopdmareg 1,31,63,63,63

	# ttaddrcrxy	"wsa,wsb,wsc,wsd,wse,wsf"
	ttaddrcrxy 0,0,0,0,0,0
	ttaddrcrxy 7,63,7,7,7,63

	# ttaddrcrzw	"wsa,wsb,wsc,wsd,wse,wsf"
	ttaddrcrzw 0,0,0,0,0,0
	ttaddrcrzw 7,63,7,7,7,63

	# ttapool3s1	"wss,wsh,wsi,wsj"
	ttapool3s1 0,0,0,0
	ttapool3s1 3,127,1,16383

	# ttapool3s2	"wss,wsh,wsi,wsj"
	ttapool3s2 0,0,0,0
	ttapool3s2 3,127,1,16383

	# ttatcas	"wsk,wsl,ww1,wsn,wso,wsp"
	ttatcas 0,0,0,0,0,0
	ttatcas 1,15,511,3,63,63

	# ttatgetm	"wsr"
	ttatgetm 0
	ttatgetm 16777215

	# ttatincget	"wsk,wsm,wsn,wso,wsp"
	ttatincget 0,0,0,0,0
	ttatincget 1,15,3,63,63

	# ttatincgetptr	"wsk,wsq,wsl,ww1,wsn,wso,wsp"
	ttatincgetptr 0,0,0,0,0,0,0
	ttatincgetptr 1,1,15,511,3,63,63

	# ttatrelm	"wsr"
	ttatrelm 0
	ttatrelm 16777215

	# ttatswap	"wsk,wsm,wso,wsp"
	ttatswap 0,0,0,0
	ttatswap 1,15,63,63

	# ttcleardvalid	"wss,wst"
	ttcleardvalid 0,0
	ttcleardvalid 3,4194303

	# ttclrexphist	""
	ttclrexphist

	# ttconv3s1	"wss,wsu,wsv,wsw"
	ttconv3s1 0,0,0,0
	ttconv3s1 3,63,3,16383

	# ttconv3s2	"wss,wsu,wsv,wsw"
	ttconv3s2 0,0,0,0
	ttconv3s2 3,63,3,16383

	# ttdmanop	""
	ttdmanop

	# ttdotpv	"wss,wsx,wsy,wsz,wsw"
	ttdotpv 0,0,0,0,0
	ttdotpv 3,1,3,15,16383

	# ttelwadd	"wss,wsx,wsy,wsz,wsw"
	ttelwadd 0,0,0,0,0
	ttelwadd 3,1,3,15,16383

	# ttelwmul	"wss,wsx,wsy,wsz,wsw"
	ttelwmul 0,0,0,0,0
	ttelwmul 3,1,3,15,16383

	# ttelwsub	"wss,wsx,wsy,wsz,wsw"
	ttelwsub 0,0,0,0,0
	ttelwsub 3,1,3,15,16383

	# ttflushdma	"wt0"
	ttflushdma 0
	ttflushdma 16777215

	# ttgapool	"wss,wt1,wsz,wt2,wsj"
	ttgapool 0,0,0,0,0
	ttgapool 3,7,15,1,16383

	# ttgatesrcrst	"wt3,wt4"
	ttgatesrcrst 0,0
	ttgatesrcrst 8388607,1

	# ttgmpool	"wss,wt1,wsz,wt2,wsj"
	ttgmpool 0,0,0,0,0
	ttgmpool 3,7,15,1,16383

	# ttincadcxy	"wsa,wsb,wsc,wsd,wse"
	ttincadcxy 0,0,0,0,0
	ttincadcxy 7,63,7,7,7

	# ttincadczw	"wsa,wsb,wsc,wsd,wse"
	ttincadczw 0,0,0,0,0
	ttincadczw 7,63,7,7,7

	# ttloadind	"wt9,wta,wtb,wso,wsp"
	ttloadind 0,0,0,0,0
	ttloadind 3,255,3,63,63

	# ttloadreg	"wtc,wtd"
	ttloadreg 0,0
	ttloadreg 15,16383

	# ttmfconv3s1	"wss,wte,wsv,wsw"
	ttmfconv3s1 0,0,0,0
	ttmfconv3s1 3,31,3,16383

	# ttmop	"wtf,wtg,wth"
	ttmop 0,0,0
	ttmop 1,127,32767

	# ttmopcfg	"wti"
	ttmopcfg 0
	ttmopcfg 16777215

	# ttmova2d	"wtj,wtk,wsv,wtl,wtm"
	ttmova2d 0,0,0,0,0
	ttmova2d 1,63,3,3,4095

	# ttmovb2a	"wtn,wsv,wtl,wto"
	ttmovb2a 0,0,0,0
	ttmovb2a 7,3,3,4095

	# ttmovb2d	"wtj,wtk,wsv,wtl,wtm"
	ttmovb2d 0,0,0,0,0
	ttmovb2d 1,63,3,7,2047

	# ttmovd2a	"wtj,wtk,wsv,wtl,wtm"
	ttmovd2a 0,0,0,0,0
	ttmovd2a 1,63,3,3,1

	# ttmovd2b	"wtj,wtk,wsv,wtl,wtm"
	ttmovd2b 0,0,0,0,0
	ttmovd2b 1,63,3,3,1

	# ttmovdbga2d	"wtj,wtk,wsv,wtl,wtm"
	ttmovdbga2d 0,0,0,0,0
	ttmovdbga2d 1,63,3,7,1

	# ttmpool3s1	"wss,wsh,wsi,wsj"
	ttmpool3s1 0,0,0,0
	ttmpool3s1 3,127,1,16383

	# ttmpool3s2	"wss,wsh,wsi,wsj"
	ttmpool3s2 0,0,0,0
	ttmpool3s2 3,127,1,16383

	# ttmvmul	"wss,wt1,wsz,wsw"
	ttmvmul 0,0,0,0
	ttmvmul 3,7,15,16383

	# ttpacr	"wtp,wtq,wty,wtr,wts,wtt,wtu"
	ttpacr 0,0,0,0,0,0,0
	ttpacr 7,7,1,1,1,1,1

	# ttpacrsetreg	"wtv,wtw,wtx,wty,wtz,wu0,wtu"
	ttpacrsetreg 0,0,0,0,0,0,0
	ttpacrsetreg 1,1,1023,3,3,1,1

	# ttrareb	""
	ttrareb

	# ttrdcfg	"wu1,wu2"
	ttrdcfg 0,0
	ttrdcfg 255,32767

	# ttreg2flop	"wt9,wu3,wu4,wu5,wu6,wu7"
	ttreg2flop 0,0,0,0,0,0
	ttreg2flop 3,3,3,3,767,63

	# ttrmwcib0	"wuc,wud,wue"
	ttrmwcib0 0,0,0
	ttrmwcib0 255,255,255

	# ttrmwcib1	"wuc,wud,wue"
	ttrmwcib1 0,0,0
	ttrmwcib1 255,255,255

	# ttrmwcib2	"wuc,wud,wue"
	ttrmwcib2 0,0,0
	ttrmwcib2 255,255,255

	# ttrmwcib3	"wuc,wud,wue"
	ttrmwcib3 0,0,0
	ttrmwcib3 255,255,255

	# ttrstdma	""
	ttrstdma

	# ttsemget	"wuf"
	ttsemget 0
	ttsemget 3145727

	# ttseminit	"wug,wuh,wui"
	ttseminit 0,0,0
	ttseminit 63,63,12287

	# ttsempost	"wuf"
	ttsempost 0
	ttsempost 3145727

	# ttsemwait	"wuj,wuk,wul"
	ttsemwait 0,0,0
	ttsemwait 511,8191,3 

	# ttsetadc	"wsa,wum,wun,wuo"
	ttsetadc 0,0,0,0
	ttsetadc 7,1,3,16383

	# ttsetadcxx	"wsa,wup,wuq"
	ttsetadcxx 0,0,0
	ttsetadcxx 7,2047,1023

	# ttsetadcxy	"wsa,wsb,wsc,wsd,wse,wur"
	ttsetadcxy 0,0,0,0,0,0
	ttsetadcxy 7,63,7,7,7,63

	# ttsetadczw	"wsa,wsb,wsc,wsd,wse,wur"
	ttsetadczw 0,0,0,0,0,0
	ttsetadczw 7,63,7,7,7,63

	# ttsetashrmh	"wus,wut"
	ttsetashrmh 0,0
	ttsetashrmh 8388607,1

	# ttsetashrmh0	"wus,wut"
	ttsetashrmh0 0,0
	ttsetashrmh0 8388607,1

	# ttsetashrmh1	"wus,wut"
	ttsetashrmh1 0,0
	ttsetashrmh1 8388607,1

	# ttsetashrmv	"wuu"
	ttsetashrmv 0
	ttsetashrmv 16777215

	# ttsetc16	"wuv,wuw"
	ttsetc16 0,0
	ttsetc16 255,65535

	# ttsetdvalid	"wuw"
	ttsetdvalid 0
	ttsetdvalid 65535

	# ttsetibrwc	"wt5,wuy,wuz"
	ttsetibrwc 0,0,0
	ttsetibrwc 15,4095,63

	# ttsetpkedgof	"wv0,wv1,wv2,ww2"
	ttsetpkedgof 0,0,0,0
	ttsetpkedgof 4095,15,15,15

	# ttsetrwc	"wv3,wt5,wt6,wt7,wt8,wur"
	ttsetrwc 0,0,0,0,0,0
	ttsetrwc 3,15,15,15,15,63

	# ttsfploadmacro	"wv4,wv5,wv6,wv7"
	ttsfploadmacro 0,0,0,0
	ttsfploadmacro 15,15,3,63

	# ttshiftxa	"wv8,wv9"
	ttshiftxa 0,0
	ttshiftxa 262143,3

	# ttshiftxb	"wtp,wva,wvb"
	ttshiftxb 0,0,0
	ttshiftxb 511,15,1023

	# ttstallwait	"wuj,wvc"
	ttstallwait 0,0
	ttstallwait 511,255

	# ttstoreind	"wsk,wvd,wve,wvf,wtb,wso,wsp"
	ttstoreind 0,0,0,0,0,0,0
	ttstoreind 1,1,1,127,3,63,63

	# ttstorereg	"wtc,wtd"
	ttstorereg 0,0
	ttstorereg 15,16383

	# tttbufcmd	""
	tttbufcmd

	# tttrnspsrca	""
	tttrnspsrca

	# tttrnspsrcb	""
	tttrnspsrcb

	# ttunpacr	"wvg,wvh,wvi,wvj,wvk,wtr,wvl,wvm,wvn,wvo,wvp,wvq,wt4"
	ttunpacr 0,0,0,0,0,0,0,0,0,0,0,0,0
 	ttunpacr 1,255,3,7,3,1,1,1,1,1,1,1,1

	# ttunpacrnop	"wvg,wvr"
	ttunpacrnop 0,0
	ttunpacrnop 1,1023

	# ttwrcfg	"wu1,wvs,wvt"
	ttwrcfg 0,0,0
	ttwrcfg 255,1,32767

	# ttxmov	"wvu,wvv"
	ttxmov 0,0
	ttxmov 1,8388607

	# ttzeroacc	"wvw,wsz,wsw"
	ttzeroacc 0,0,0
	ttzeroacc 31,7,16383

	# ttzerosrc	"wvx,wvy,wvz,ww0"
	ttzerosrc 0,0,0,0
	ttzerosrc 1048575,1,1,3
