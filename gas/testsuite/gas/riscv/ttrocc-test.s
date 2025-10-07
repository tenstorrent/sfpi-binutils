target:
    ttrocc.cmdbuf_wr_reg                x0, 1, 16, a1, x0

    ttrocc.cmdbuf_wr_reg                x5, 0, 16, x6, x7
    ttrocc.cmdbuf_wr_reg                x5, 1, 16, x6, x7
    ttrocc.cmdbuf_wr_reg                a0, 0, 5, a1, a2
    ttrocc.cmdbuf_wr_reg                a0, 1, 5, a1, a2

    ttrocc.cmdbuf_rd_reg                a0, 1, 24, x0, x0

    ttrocc.cmdbuf_rd_reg                x5, 0, 16, x6, x7
    ttrocc.cmdbuf_rd_reg                x5, 1, 16, x6, x7
    ttrocc.cmdbuf_rd_reg                a0, 0, 5, a1, a2
    ttrocc.cmdbuf_rd_reg                a0, 1, 5, a1, a2

    ttrocc.cmdbuf_get_vc_space          a0, 1

    ttrocc.cmdbuf_get_vc_space          a0, 0
    ttrocc.cmdbuf_get_vc_space          a3, 1
    ttrocc.cmdbuf_get_vc_space          a3, 0

    ttrocc.cmdbuf_get_vc_space_vc       a0, 0, a1
    ttrocc.cmdbuf_get_vc_space_vc       a0, 1, a1

    ttrocc.cmdbuf_wr_sent               a0, 0
    ttrocc.cmdbuf_wr_sent               a0, 1

    ttrocc.cmdbuf_wr_sent_trid          a0, 0, a1
    ttrocc.cmdbuf_wr_sent_trid          a0, 1, a1

    ttrocc.cmdbuf_tr_ack                a0, 0
    ttrocc.cmdbuf_tr_ack                a0, 1

    ttrocc.cmdbuf_tr_ack_trid           a0, 0, a1
    ttrocc.cmdbuf_tr_ack_trid           a0, 1, a1

    ttrocc.cmdbuf_reset                 0
    ttrocc.cmdbuf_reset                 1

    ttrocc.cmdbuf_idma_get_vc_space     a0, 0
    ttrocc.cmdbuf_idma_get_vc_space     a0, 1

    ttrocc.cmdbuf_idma_get_vc_space_vc  a0, 0, a1
    ttrocc.cmdbuf_idma_get_vc_space_vc  a0, 1, a1

    ttrocc.cmdbuf_idma_tr_ack           a0, 0
    ttrocc.cmdbuf_idma_tr_ack           a0, 1

    ttrocc.cmdbuf_idma_tr_ack_trid      a0, 0, a1
    ttrocc.cmdbuf_idma_tr_ack_trid      a0, 1, a1

    ttrocc.cmdbuf_issue_trans           0
    ttrocc.cmdbuf_issue_trans           1

    ttrocc.cmdbuf_issue_inline_trans    0,a1
    ttrocc.cmdbuf_issue_inline_trans    1,a1

    ttrocc.cmdbuf_issue_addr_trans      0,a1,a2
    ttrocc.cmdbuf_issue_addr_trans      1,a1,a2

    ttrocc.cmdbuf_issue_read1_trans     0,a1
    ttrocc.cmdbuf_issue_read1_trans     1,a1

    ttrocc.cmdbuf_issue_read2_trans     0,a1,a2
    ttrocc.cmdbuf_issue_read2_trans     1,a1,a2

    ttrocc.cmdbuf_issue_write1_trans    0,a1
    ttrocc.cmdbuf_issue_write1_trans    1,a1

    ttrocc.cmdbuf_issue_write2_trans    0,a1,a2
    ttrocc.cmdbuf_issue_write2_trans    1,a1,a2
