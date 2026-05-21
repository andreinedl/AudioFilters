vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_16
vlib modelsim_lib/msim/microblaze_riscv_v1_0_7
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lmb_v10_v3_0_16
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_27
vlib modelsim_lib/msim/blk_mem_gen_v8_4_12
vlib modelsim_lib/msim/proc_sys_reset_v5_0_17
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_36
vlib modelsim_lib/msim/axi_vip_v1_1_22
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_22
vlib modelsim_lib/msim/mdm_riscv_v1_0_7
vlib modelsim_lib/msim/dist_mem_gen_v8_0_17
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_quad_spi_v3_2_35
vlib modelsim_lib/msim/axi_gpio_v2_0_37
vlib modelsim_lib/msim/axi_datamover_v5_1_37
vlib modelsim_lib/msim/axi_sg_v4_1_21
vlib modelsim_lib/msim/axi_dma_v7_1_37
vlib modelsim_lib/msim/axi_iic_v2_1_11
vlib modelsim_lib/msim/fifo_generator_v13_2_14

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_16 modelsim_lib/msim/microblaze_v11_0_16
vmap microblaze_riscv_v1_0_7 modelsim_lib/msim/microblaze_riscv_v1_0_7
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_16 modelsim_lib/msim/lmb_v10_v3_0_16
vmap lmb_bram_if_cntlr_v4_0_27 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_27
vmap blk_mem_gen_v8_4_12 modelsim_lib/msim/blk_mem_gen_v8_4_12
vmap proc_sys_reset_v5_0_17 modelsim_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 modelsim_lib/msim/axi_register_slice_v2_1_36
vmap axi_vip_v1_1_22 modelsim_lib/msim/axi_vip_v1_1_22
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_22 modelsim_lib/msim/axi_intc_v4_1_22
vmap mdm_riscv_v1_0_7 modelsim_lib/msim/mdm_riscv_v1_0_7
vmap dist_mem_gen_v8_0_17 modelsim_lib/msim/dist_mem_gen_v8_0_17
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_35 modelsim_lib/msim/axi_quad_spi_v3_2_35
vmap axi_gpio_v2_0_37 modelsim_lib/msim/axi_gpio_v2_0_37
vmap axi_datamover_v5_1_37 modelsim_lib/msim/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 modelsim_lib/msim/axi_sg_v4_1_21
vmap axi_dma_v7_1_37 modelsim_lib/msim/axi_dma_v7_1_37
vmap axi_iic_v2_1_11 modelsim_lib/msim/axi_iic_v2_1_11
vmap fifo_generator_v13_2_14 modelsim_lib/msim/fifo_generator_v13_2_14

vlog -work xilinx_vip  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_16  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/c957/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_7  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/404b/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_0/sim/block_design_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_16  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/dac4/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_dlmb_v10_0/sim/block_design_dlmb_v10_0.vhd" \
"../../../bd/block_design/ip/block_design_ilmb_v10_0/sim/block_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_27  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/7cd0/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_dlmb_bram_if_cntlr_0/sim/block_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/block_design/ip/block_design_ilmb_bram_if_cntlr_0/sim/block_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_12  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_lmb_bram_0/sim/block_design_lmb_bram_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_1/sim/bd_22f9_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_2/sim/bd_22f9_arsw_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_3/sim/bd_22f9_rsw_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_4/sim/bd_22f9_awsw_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_5/sim/bd_22f9_wsw_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_6/sim/bd_22f9_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_7/sim/bd_22f9_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_8/sim/bd_22f9_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_9/sim/bd_22f9_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_10/sim/bd_22f9_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_11/sim/bd_22f9_sarn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_12/sim/bd_22f9_srn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_13/sim/bd_22f9_sawn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_14/sim/bd_22f9_swn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_15/sim/bd_22f9_sbn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_16/sim/bd_22f9_s01mmu_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_17/sim/bd_22f9_s01tr_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_18/sim/bd_22f9_s01sic_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_19/sim/bd_22f9_s01a2s_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_20/sim/bd_22f9_sarn_1.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_21/sim/bd_22f9_srn_1.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_22/sim/bd_22f9_sawn_1.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_23/sim/bd_22f9_swn_1.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_24/sim/bd_22f9_sbn_1.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_25/sim/bd_22f9_s02mmu_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_26/sim/bd_22f9_s02tr_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_27/sim/bd_22f9_s02sic_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_28/sim/bd_22f9_s02a2s_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_29/sim/bd_22f9_sarn_2.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_30/sim/bd_22f9_srn_2.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_31/sim/bd_22f9_s03mmu_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_32/sim/bd_22f9_s03tr_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_33/sim/bd_22f9_s03sic_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_34/sim/bd_22f9_s03a2s_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_35/sim/bd_22f9_sarn_3.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_36/sim/bd_22f9_srn_3.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_37/sim/bd_22f9_s04mmu_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_38/sim/bd_22f9_s04tr_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_39/sim/bd_22f9_s04sic_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_40/sim/bd_22f9_s04a2s_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_41/sim/bd_22f9_sawn_2.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_42/sim/bd_22f9_swn_2.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_43/sim/bd_22f9_sbn_2.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_44/sim/bd_22f9_s05mmu_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_45/sim/bd_22f9_s05tr_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_46/sim/bd_22f9_s05sic_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_47/sim/bd_22f9_s05a2s_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_48/sim/bd_22f9_sarn_4.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_49/sim/bd_22f9_srn_4.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_50/sim/bd_22f9_sawn_3.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_51/sim/bd_22f9_swn_3.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_52/sim/bd_22f9_sbn_3.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_53/sim/bd_22f9_m00s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_54/sim/bd_22f9_m00arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_55/sim/bd_22f9_m00rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_56/sim/bd_22f9_m00awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_57/sim/bd_22f9_m00wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_58/sim/bd_22f9_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_59/sim/bd_22f9_m00e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_60/sim/bd_22f9_m01s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_61/sim/bd_22f9_m01arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_62/sim/bd_22f9_m01rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_63/sim/bd_22f9_m01awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_64/sim/bd_22f9_m01wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_65/sim/bd_22f9_m01bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_66/sim/bd_22f9_m01e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_67/sim/bd_22f9_m02s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_68/sim/bd_22f9_m02arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_69/sim/bd_22f9_m02rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_70/sim/bd_22f9_m02awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_71/sim/bd_22f9_m02wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_72/sim/bd_22f9_m02bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_73/sim/bd_22f9_m02e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_74/sim/bd_22f9_m03s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_75/sim/bd_22f9_m03arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_76/sim/bd_22f9_m03rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_77/sim/bd_22f9_m03awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_78/sim/bd_22f9_m03wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_79/sim/bd_22f9_m03bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_80/sim/bd_22f9_m03e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_81/sim/bd_22f9_m04s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_82/sim/bd_22f9_m04arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_83/sim/bd_22f9_m04rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_84/sim/bd_22f9_m04awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_85/sim/bd_22f9_m04wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_86/sim/bd_22f9_m04bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_87/sim/bd_22f9_m04e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_88/sim/bd_22f9_m05s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_89/sim/bd_22f9_m05arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_90/sim/bd_22f9_m05rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_91/sim/bd_22f9_m05awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_92/sim/bd_22f9_m05wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_93/sim/bd_22f9_m05bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_94/sim/bd_22f9_m05e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_95/sim/bd_22f9_m06s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_96/sim/bd_22f9_m06arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_97/sim/bd_22f9_m06rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_98/sim/bd_22f9_m06awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_99/sim/bd_22f9_m06wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_100/sim/bd_22f9_m06bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_101/sim/bd_22f9_m06e_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_102/sim/bd_22f9_m07s2a_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_103/sim/bd_22f9_m07arn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_104/sim/bd_22f9_m07rn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_105/sim/bd_22f9_m07awn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_106/sim/bd_22f9_m07wn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_107/sim/bd_22f9_m07bn_0.sv" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/ip/ip_108/sim/bd_22f9_m07e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/bd_0/sim/bd_22f9.v" \

vcom -work smartconnect_v1_0  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L xilinx_vip "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_periph_0/sim/block_design_microblaze_riscv_0_axi_periph_0.sv" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_22  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f258/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_microblaze_riscv_0_axi_intc_0/sim/block_design_microblaze_riscv_0_axi_intc_0.vhd" \

vcom -work mdm_riscv_v1_0_7  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d25b/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_mdm_1_0/sim/block_design_mdm_1_0.vhd" \
"../../../bd/block_design/ip/block_design_rst_clk_wiz_1_100M_0/sim/block_design_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
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

vlog -work dist_mem_gen_v8_0_17  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_35  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/sim/PmodOLED_axi_quad_spi_0_0.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/sim/PmodOLED_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/0bf9/src/PmodOLED.v" \
"../../../bd/block_design/ip/block_design_PmodOLED_0_0/sim/block_design_PmodOLED_0_0.v" \

vcom -work axi_datamover_v5_1_37  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_37  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/7f6a/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_axi_dma_0_0/sim/block_design_axi_dma_0_0.vhd" \

vcom -work axi_iic_v2_1_11  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/67c0/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ip/block_design_axi_iic_0_0/sim/block_design_axi_iic_0_0.vhd" \
"../../../bd/block_design/ip/block_design_axi_gpio_0_0/sim/block_design_axi_gpio_0_0.vhd" \

vlog -work fifo_generator_v13_2_14  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14  -93  \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/src/fifo_32/sim/fifo_32.v" \
"../../../bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/src/fifo_4/sim/fifo_4.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/block_design/ipshared/374c/src/rst_sync.vhd" \
"../../../bd/block_design/ipshared/374c/src/i2s_ctl.vhd" \
"../../../bd/block_design/ipshared/374c/src/DCM.vhd" \
"../../../bd/block_design/ipshared/374c/src/Sync_ff.vhd" \
"../../../bd/block_design/ipshared/374c/src/i2s_stream.vhd" \
"../../../bd/block_design/ipshared/374c/src/i2s_rx_tx.vhd" \
"../../../bd/block_design/ipshared/374c/src/d_axi_i2s_audio_v2_0_AXI_L.vhd" \
"../../../bd/block_design/ipshared/374c/src/d_axi_i2s_audio_v2_0.vhd" \
"../../../bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/sim/block_design_d_axi_i2s_audio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/f0b6/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/00fe/hdl/verilog" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ipshared/ec67/hdl" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+../../../../AudioFilters.gen/sources_1/bd/block_design/ip/block_design_PmodOLED_0_0/drivers/PmodOLED_v1_0/src" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/block_design/sim/block_design.v" \

vlog -work xil_defaultlib \
"glbl.v"

