#as: -march=rv32im_xttrocc
#source: ttrocc-scmdbuf-test.s
#objdump: -d

.*:[    ]+file format .*


Disassembly of section .text:

0+000 <target>:
[ 	]+0:[ 	]+8008a02b[ 	]+tt.rocc.scmdbuf_wr_reg[ 	]+zero,0,a7,zero
[ 	]+4:[ 	]+e005202b[ 	]+tt.rocc.scmdbuf_wr_reg[ 	]+zero,48,a0,zero
[ 	]+8:[ 	]+800048ab[ 	]+tt.rocc.scmdbuf_rd_reg[ 	]+a7,0,zero,zero
[ 	]+c:[ 	]+e000482b[ 	]+tt.rocc.scmdbuf_rd_reg[ 	]+a6,48,zero,zero
[ 	]+10:[ 	]+fc0045ab[ 	]+tt.rocc.scmdbuf_get_vc_space[ 	]+a1
[ 	]+14:[ 	]+fc0048ab[ 	]+tt.rocc.scmdbuf_get_vc_space[ 	]+a7
[ 	]+18:[ 	]+fc08e5ab[ 	]+tt.rocc.scmdbuf_get_vc_space_vc[ 	]+a1,a7
[ 	]+1c:[ 	]+fa0045ab[ 	]+tt.rocc.scmdbuf_wr_sent[ 	]+a1
[ 	]+20:[ 	]+fa0048ab[ 	]+tt.rocc.scmdbuf_wr_sent[ 	]+a7
[ 	]+24:[ 	]+fa08e5ab[ 	]+tt.rocc.scmdbuf_wr_sent_trid[ 	]+a1,a7
[ 	]+28:[ 	]+fa0568ab[ 	]+tt.rocc.scmdbuf_wr_sent_trid[ 	]+a7,a0
[ 	]+2c:[ 	]+f80045ab[ 	]+tt.rocc.scmdbuf_tr_ack[ 	]+a1
[ 	]+30:[ 	]+f80048ab[ 	]+tt.rocc.scmdbuf_tr_ack[ 	]+a7
[ 	]+34:[ 	]+f808e5ab[ 	]+tt.rocc.scmdbuf_tr_ack_trid[ 	]+a1,a7
[ 	]+38:[ 	]+f80568ab[ 	]+tt.rocc.scmdbuf_tr_ack_trid[ 	]+a7,a0
[ 	]+3c:[ 	]+f600002b[ 	]+tt.rocc.scmdbuf_reset
[ 	]+40:[ 	]+fe00002b[ 	]+tt.rocc.scmdbuf_issue_trans
[ 	]+44:[ 	]+fe05202b[ 	]+tt.rocc.scmdbuf_issue_inline_trans[ 	]+a0
[ 	]+48:[ 	]+fe08a02b[ 	]+tt.rocc.scmdbuf_issue_inline_trans[ 	]+a7
[ 	]+4c:[ 	]+ff15302b[ 	]+tt.rocc.scmdbuf_issue_inline_addr_trans[ 	]+a0,a7
[ 	]+50:[ 	]+fea8b02b[ 	]+tt.rocc.scmdbuf_issue_inline_addr_trans[ 	]+a7,a0
[ 	]+54:[ 	]+f005202b[ 	]+tt.rocc.scmdbuf_issue_read1_trans[ 	]+a0
[ 	]+58:[ 	]+f008a02b[ 	]+tt.rocc.scmdbuf_issue_read1_trans[ 	]+a7
[ 	]+5c:[ 	]+f115302b[ 	]+tt.rocc.scmdbuf_issue_read2_trans[ 	]+a0,a7
[ 	]+60:[ 	]+f0a8b02b[ 	]+tt.rocc.scmdbuf_issue_read2_trans[ 	]+a7,a0
[ 	]+64:[ 	]+ee05202b[ 	]+tt.rocc.scmdbuf_issue_write1_trans[ 	]+a0
[ 	]+68:[ 	]+ee08a02b[ 	]+tt.rocc.scmdbuf_issue_write1_trans[ 	]+a7
[ 	]+6c:[ 	]+ef15302b[ 	]+tt.rocc.scmdbuf_issue_write2_trans[ 	]+a0,a7
[ 	]+70:[ 	]+eea8b02b[ 	]+tt.rocc.scmdbuf_issue_write2_trans[ 	]+a7,a0
