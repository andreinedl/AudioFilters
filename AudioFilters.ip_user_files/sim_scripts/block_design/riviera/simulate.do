transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+block_design  -L xil_defaultlib -L xilinx_vip -L xpm -L microblaze_v11_0_16 -L microblaze_riscv_v1_0_7 -L lmb_v10_v3_0_16 -L lmb_bram_if_cntlr_v4_0_27 -L blk_mem_gen_v8_4_12 -L proc_sys_reset_v5_0_17 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_36 -L axi_vip_v1_1_22 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_22 -L mdm_riscv_v1_0_7 -L dist_mem_gen_v8_0_17 -L interrupt_control_v3_1_5 -L axi_quad_spi_v3_2_35 -L axi_gpio_v2_0_37 -L axi_datamover_v5_1_37 -L axi_sg_v4_1_21 -L axi_dma_v7_1_37 -L axi_iic_v2_1_11 -L fifo_generator_v13_2_14 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.block_design xil_defaultlib.glbl

do {block_design.udo}

run 1000ns

endsim

quit -force
