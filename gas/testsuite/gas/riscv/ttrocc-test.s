target:
    ttrocc.cmdbuf_wr_reg          x0, 1, 16, a1, x0

    ttrocc.cmdbuf_wr_reg          x5, 0, 16, x6, x7
    ttrocc.cmdbuf_wr_reg          x5, 1, 16, x6, x7
    ttrocc.cmdbuf_wr_reg          a0, 0, 5, a1, a2
    ttrocc.cmdbuf_wr_reg          a0, 1, 5, a1, a2

    ttrocc.cmdbuf_rd_reg          a0, 1, 24, x0, x0

    ttrocc.cmdbuf_rd_reg          x5, 0, 16, x6, x7
    ttrocc.cmdbuf_rd_reg          x5, 1, 16, x6, x7
    ttrocc.cmdbuf_rd_reg          a0, 0, 5, a1, a2
    ttrocc.cmdbuf_rd_reg          a0, 1, 5, a1, a2

    ttrocc.cmdbuf_get_vc_space    a0, 1

    ttrocc.cmdbuf_get_vc_space    a0, 0
    ttrocc.cmdbuf_get_vc_space    a3, 1
    ttrocc.cmdbuf_get_vc_space    a3, 0

    ttrocc.cmdbuf_get_vc_space_vc a0, 0, a1
    ttrocc.cmdbuf_get_vc_space_vc a0, 1, a1

    ttrocc.cmdbuf_wr_sent         a0, 0
    ttrocc.cmdbuf_wr_sent         a0, 1

    ttrocc.dbg_postcode           a1
    ttrocc.noc_fence
    ttrocc.llk_intf_write         a1, a2
    ttrocc.llk_intf_read          a0, a1
    ttrocc.fds_intf_write         a1, a2
    ttrocc.fds_intf_read          a0, a1

