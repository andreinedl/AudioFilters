transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_16
vlib activehdl/microblaze_riscv_v1_0_7
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_16
vlib activehdl/lmb_bram_if_cntlr_v4_0_27
vlib activehdl/blk_mem_gen_v8_4_12
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_22
vlib activehdl/mdm_riscv_v1_0_7
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/dist_mem_gen_v8_0_17
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_quad_spi_v3_2_35
vlib activehdl/axi_gpio_v2_0_37
vlib activehdl/axi_datamover_v5_1_37
vlib activehdl/axi_sg_v4_1_21
vlib activehdl/axi_dma_v7_1_37
vlib activehdl/axi_iic_v2_1_11
vlib activehdl/fifo_generator_v13_2_14
vlib activehdl/axi_uartlite_v2_0_39
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/axi_data_fifo_v2_1_36
vlib activehdl/axi_crossbar_v2_1_38

vmap xpm activehdl/xpm
vmap microblaze_v11_0_16 activehdl/microblaze_v11_0_16
vmap microblaze_riscv_v1_0_7 activehdl/microblaze_riscv_v1_0_7
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_16 activehdl/lmb_v10_v3_0_16
vmap lmb_bram_if_cntlr_v4_0_27 activehdl/lmb_bram_if_cntlr_v4_0_27
vmap blk_mem_gen_v8_4_12 activehdl/blk_mem_gen_v8_4_12
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_22 activehdl/axi_intc_v4_1_22
vmap mdm_riscv_v1_0_7 activehdl/mdm_riscv_v1_0_7
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap dist_mem_gen_v8_0_17 activehdl/dist_mem_gen_v8_0_17
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_35 activehdl/axi_quad_spi_v3_2_35
vmap axi_gpio_v2_0_37 activehdl/axi_gpio_v2_0_37
vmap axi_datamover_v5_1_37 activehdl/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 activehdl/axi_sg_v4_1_21
vmap axi_dma_v7_1_37 activehdl/axi_dma_v7_1_37
vmap axi_iic_v2_1_11 activehdl/axi_iic_v2_1_11
vmap fifo_generator_v13_2_14 activehdl/fifo_generator_v13_2_14
vmap axi_uartlite_v2_0_39 activehdl/axi_uartlite_v2_0_39
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap axi_data_fifo_v2_1_36 activehdl/axi_data_fifo_v2_1_36
vmap axi_crossbar_v2_1_38 activehdl/axi_crossbar_v2_1_38

vlog -work xpm  -sv2k12 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_16 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/c957/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_7 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/404b/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_0/sim/block_design_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_16 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/dac4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_dlmb_v10_0/sim/block_design_dlmb_v10_0.vhd" \
"../../../bd/block_design/ip/block_design_ilmb_v10_0/sim/block_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_27 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/7cd0/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_dlmb_bram_if_cntlr_0/sim/block_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/block_design/ip/block_design_ilmb_bram_if_cntlr_0/sim/block_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_12  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../bd/block_design/ip/block_design_lmb_bram_0/sim/block_design_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_22 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f258/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_intc_0/sim/block_design_microblaze_riscv_0_axi_intc_0.vhd" \

vcom -work mdm_riscv_v1_0_7 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d25b/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_mdm_1_0/sim/block_design_mdm_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_rst_clk_wiz_1_100M_0/sim/block_design_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/block_design_mig_7series_0_0_mig_sim.v" \
"../../../bd/block_design/ip/block_design_mig_7series_0_0/block_design_mig_7series_0_0/user_design/rtl/block_design_mig_7series_0_0.v" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/src/pmod_concat.v" \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/sim/PmodOLED_pmod_bridge_0_0.v" \

vlog -work dist_mem_gen_v8_0_17  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_35 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/sim/PmodOLED_axi_quad_spi_0_0.vhd" \

vcom -work axi_gpio_v2_0_37 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/sim/PmodOLED_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/0bf9/src/PmodOLED.v" \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/sim/block_design_PmodOLED_0_0.v" \

vcom -work axi_datamover_v5_1_37 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_37 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/7f6a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_axi_dma_0_0/sim/block_design_axi_dma_0_0.vhd" \

vcom -work axi_iic_v2_1_11 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/67c0/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_axi_iic_0_0/sim/block_design_axi_iic_0_0.vhd" \
"../../../bd/block_design/ip/block_design_axi_gpio_0_0/sim/block_design_axi_gpio_0_0.vhd" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/src/fifo_32/sim/fifo_32.v" \
"../../../bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/src/fifo_4/sim/fifo_4.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ipshared/374c/src/rst_sync.vhd" \
"../../../bd/block_design/ipshared/374c/src/i2s_ctl.vhd" \
"../../../bd/block_design/ipshared/374c/src/DCM.vhd" \
"../../../bd/block_design/ipshared/374c/src/Sync_ff.vhd" \
"../../../bd/block_design/ipshared/374c/src/i2s_stream.vhd" \
"../../../bd/block_design/ipshared/374c/src/i2s_rx_tx.vhd" \
"../../../bd/block_design/ipshared/374c/src/d_axi_i2s_audio_v2_0_AXI_L.vhd" \
"../../../bd/block_design/ipshared/374c/src/d_axi_i2s_audio_v2_0.vhd" \
"../../../bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/sim/block_design_d_axi_i2s_audio_0_0.vhd" \

vcom -work axi_uartlite_v2_0_39 -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/block_design/ip/block_design_axi_uartlite_0_0/sim/block_design_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_38  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f084/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" -l xpm -l microblaze_v11_0_16 -l microblaze_riscv_v1_0_7 -l xil_defaultlib -l lmb_v10_v3_0_16 -l lmb_bram_if_cntlr_v4_0_27 -l blk_mem_gen_v8_4_12 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_22 -l mdm_riscv_v1_0_7 -l proc_sys_reset_v5_0_17 -l dist_mem_gen_v8_0_17 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_35 -l axi_gpio_v2_0_37 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_37 -l axi_iic_v2_1_11 -l fifo_generator_v13_2_14 -l axi_uartlite_v2_0_39 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_data_fifo_v2_1_36 -l axi_crossbar_v2_1_38 \
"../../../bd/block_design/ip/block_design_axi_interconnect_0_imp_xbar_0/sim/block_design_axi_interconnect_0_imp_xbar_0.v" \
"../../../bd/block_design/ip/block_design_axi_interconnect_1_imp_xbar_0/sim/block_design_axi_interconnect_1_imp_xbar_0.v" \
"../../../bd/block_design/sim/block_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

