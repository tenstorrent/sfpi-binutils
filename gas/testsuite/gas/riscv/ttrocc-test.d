#as: -march=rv32im_xttrocc
#source: ttrocc-test.s
#objdump: -d

.*:[    ]+file format .*


Disassembly of section .text:

0+000 <target>:
[ 	]+0:[ 	]+a005a00b[ 	]+ttrocc.cmdbuf_wr_reg[ 	]+zero,1,16,a1,zero
[ 	]+4:[ 	]+2073228b[ 	]+ttrocc.cmdbuf_wr_reg[ 	]+t0,0,16,t1,t2
[ 	]+8:[ 	]+a073228b[ 	]+ttrocc.cmdbuf_wr_reg[ 	]+t0,1,16,t1,t2
[ 	]+c:[ 	]+0ac5a50b[ 	]+ttrocc.cmdbuf_wr_reg[ 	]+a0,0,5,a1,a2
[ 	]+10:[ 	]+8ac5a50b[ 	]+ttrocc.cmdbuf_wr_reg[ 	]+a0,1,5,a1,a2
[ 	]+14:[ 	]+b000450b[ 	]+ttrocc.cmdbuf_rd_reg[ 	]+a0,1,24,zero,zero
[ 	]+18:[ 	]+2073428b[ 	]+ttrocc.cmdbuf_rd_reg[ 	]+t0,0,16,t1,t2
[ 	]+1c:[ 	]+a073428b[ 	]+ttrocc.cmdbuf_rd_reg[ 	]+t0,1,16,t1,t2
[ 	]+20:[ 	]+0ac5c50b[ 	]+ttrocc.cmdbuf_rd_reg[ 	]+a0,0,5,a1,a2
[ 	]+24:[ 	]+8ac5c50b[ 	]+ttrocc.cmdbuf_rd_reg[ 	]+a0,1,5,a1,a2
[ 	]+28:[ 	]+fc00450b[ 	]+ttrocc.cmdbuf_get_vc_space[ 	]+a0,1
[ 	]+2c:[ 	]+7c00450b[ 	]+ttrocc.cmdbuf_get_vc_space[ 	]+a0,0
[ 	]+30:[ 	]+fc00468b[ 	]+ttrocc.cmdbuf_get_vc_space[ 	]+a3,1
[ 	]+34:[ 	]+7c00468b[ 	]+ttrocc.cmdbuf_get_vc_space[ 	]+a3,0
[ 	]+38:[ 	]+7c05e50b[ 	]+ttrocc.cmdbuf_get_vc_space_vc[ 	]+a0,0,a1
[ 	]+3c:[ 	]+fc05e50b[ 	]+ttrocc.cmdbuf_get_vc_space_vc[ 	]+a0,1,a1
[ 	]+40:[ 	]+7a00450b[ 	]+ttrocc.cmdbuf_wr_sent[ 	]+a0,0
[ 	]+44:[ 	]+fa00450b[ 	]+ttrocc.cmdbuf_wr_sent[ 	]+a0,1
[ 	]+48:[ 	]+4205a05b[ 	]+ttrocc.dbg_postcode[ 	]+a1
[ 	]+4c:[ 	]+4400005b[ 	]+ttrocc.noc_fence
[ 	]+50:[ 	]+46c5b05b[ 	]+ttrocc.llk_intf_write[ 	]+a1,a2
[ 	]+54:[ 	]+4605e55b[ 	]+ttrocc.llk_intf_read[ 	]+a0,a1
[ 	]+58:[ 	]+48c5b05b[ 	]+ttrocc.fds_intf_write[ 	]+a1,a2
[ 	]+5c:[ 	]+4805e55b[ 	]+ttrocc.fds_intf_read[ 	]+a0,a1
