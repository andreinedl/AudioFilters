//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Sat May  2 13:25:21 2026
//Host        : SPACESHIP running 64-bit major release  (build 9200)
//Command     : generate_target block_design.bd
//Design      : block_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "block_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=block_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=17,numNonXlnxBlks=2,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=12,da_board_cnt=7,da_microblaze_riscv_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "block_design.hwdef" *) 
module block_design
   (BCLK_O,
    LRCLK_O,
    MCLK_O,
    SDATA_I,
    SDATA_O,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    dip_switches_8bits_tri_i,
    iic_rtl_scl_i,
    iic_rtl_scl_o,
    iic_rtl_scl_t,
    iic_rtl_sda_i,
    iic_rtl_sda_o,
    iic_rtl_sda_t,
    led_8bits_tri_o,
    oled_pin10_i,
    oled_pin10_o,
    oled_pin10_t,
    oled_pin2_i,
    oled_pin2_o,
    oled_pin2_t,
    oled_pin4_i,
    oled_pin4_o,
    oled_pin4_t,
    oled_pin7_i,
    oled_pin7_o,
    oled_pin7_t,
    oled_pin8_i,
    oled_pin8_o,
    oled_pin8_t,
    oled_pin9_i,
    oled_pin9_o,
    oled_pin9_t,
    reset,
    sys_clk_i);
  output [0:0]BCLK_O;
  output [0:0]LRCLK_O;
  output MCLK_O;
  input [0:0]SDATA_I;
  output [0:0]SDATA_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3_sdram, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]ddr3_sdram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram BA" *) output [2:0]ddr3_sdram_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CAS_N" *) output ddr3_sdram_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CK_N" *) output [0:0]ddr3_sdram_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CK_P" *) output [0:0]ddr3_sdram_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram CKE" *) output [0:0]ddr3_sdram_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DM" *) output [1:0]ddr3_sdram_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQ" *) inout [15:0]ddr3_sdram_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQS_N" *) inout [1:0]ddr3_sdram_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram DQS_P" *) inout [1:0]ddr3_sdram_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram ODT" *) output [0:0]ddr3_sdram_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram RAS_N" *) output ddr3_sdram_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram RESET_N" *) output ddr3_sdram_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3_sdram WE_N" *) output ddr3_sdram_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_8bits TRI_I" *) (* X_INTERFACE_MODE = "Master" *) input [7:0]dip_switches_8bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input iic_rtl_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SCL_O" *) output iic_rtl_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SCL_T" *) output iic_rtl_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SDA_I" *) input iic_rtl_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SDA_O" *) output iic_rtl_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_rtl SDA_T" *) output iic_rtl_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_8bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [7:0]led_8bits_tri_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN10_I" *) (* X_INTERFACE_MODE = "Master" *) input oled_pin10_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN10_O" *) output oled_pin10_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN10_T" *) output oled_pin10_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN2_I" *) input oled_pin2_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN2_O" *) output oled_pin2_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN2_T" *) output oled_pin2_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN4_I" *) input oled_pin4_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN4_O" *) output oled_pin4_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN4_T" *) output oled_pin4_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN7_I" *) input oled_pin7_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN7_O" *) output oled_pin7_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN7_T" *) output oled_pin7_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN8_I" *) input oled_pin8_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN8_O" *) output oled_pin8_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN8_T" *) output oled_pin8_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN9_I" *) input oled_pin9_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN9_O" *) output oled_pin9_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 oled PIN9_T" *) output oled_pin9_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_I, CLK_DOMAIN block_design_sys_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clk_i;

  wire \^BCLK_O ;
  wire \^LRCLK_O ;
  wire MCLK_O;
  wire [0:0]SDATA_I;
  wire \^SDATA_O ;
  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_dma_0_M_AXIS_MM2S_TKEEP;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_ARPROT;
  wire axi_dma_0_M_AXI_SG_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_ARSIZE;
  wire axi_dma_0_M_AXI_SG_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_SG_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_SG_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_SG_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_SG_AWPROT;
  wire axi_dma_0_M_AXI_SG_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_SG_AWSIZE;
  wire axi_dma_0_M_AXI_SG_AWVALID;
  wire axi_dma_0_M_AXI_SG_BREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_BRESP;
  wire axi_dma_0_M_AXI_SG_BVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_RDATA;
  wire axi_dma_0_M_AXI_SG_RLAST;
  wire axi_dma_0_M_AXI_SG_RREADY;
  wire [1:0]axi_dma_0_M_AXI_SG_RRESP;
  wire axi_dma_0_M_AXI_SG_RVALID;
  wire [31:0]axi_dma_0_M_AXI_SG_WDATA;
  wire axi_dma_0_M_AXI_SG_WLAST;
  wire axi_dma_0_M_AXI_SG_WREADY;
  wire [3:0]axi_dma_0_M_AXI_SG_WSTRB;
  wire axi_dma_0_M_AXI_SG_WVALID;
  wire axi_dma_0_mm2s_introut;
  wire axi_dma_0_s2mm_introut;
  wire axi_iic_0_iic2intc_irpt;
  wire [31:0]d_axi_i2s_audio_0_AXI_S2MM_TDATA;
  wire [3:0]d_axi_i2s_audio_0_AXI_S2MM_TKEEP;
  wire d_axi_i2s_audio_0_AXI_S2MM_TLAST;
  wire d_axi_i2s_audio_0_AXI_S2MM_TREADY;
  wire d_axi_i2s_audio_0_AXI_S2MM_TVALID;
  wire [14:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [1:0]ddr3_sdram_dm;
  wire [15:0]ddr3_sdram_dq;
  wire [1:0]ddr3_sdram_dqs_n;
  wire [1:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire [7:0]dip_switches_8bits_tri_i;
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire [7:0]led_8bits_tri_o;
  wire mdm_1_debug_sys_rst;
  wire microblaze_riscv_0_Clk;
  wire [31:0]microblaze_riscv_0_M_AXI_DC_ARADDR;
  wire [1:0]microblaze_riscv_0_M_AXI_DC_ARBURST;
  wire [3:0]microblaze_riscv_0_M_AXI_DC_ARCACHE;
  wire [7:0]microblaze_riscv_0_M_AXI_DC_ARLEN;
  wire microblaze_riscv_0_M_AXI_DC_ARLOCK;
  wire [2:0]microblaze_riscv_0_M_AXI_DC_ARPROT;
  wire [3:0]microblaze_riscv_0_M_AXI_DC_ARQOS;
  wire microblaze_riscv_0_M_AXI_DC_ARREADY;
  wire [2:0]microblaze_riscv_0_M_AXI_DC_ARSIZE;
  wire microblaze_riscv_0_M_AXI_DC_ARVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_DC_AWADDR;
  wire [1:0]microblaze_riscv_0_M_AXI_DC_AWBURST;
  wire [3:0]microblaze_riscv_0_M_AXI_DC_AWCACHE;
  wire [7:0]microblaze_riscv_0_M_AXI_DC_AWLEN;
  wire microblaze_riscv_0_M_AXI_DC_AWLOCK;
  wire [2:0]microblaze_riscv_0_M_AXI_DC_AWPROT;
  wire [3:0]microblaze_riscv_0_M_AXI_DC_AWQOS;
  wire microblaze_riscv_0_M_AXI_DC_AWREADY;
  wire [2:0]microblaze_riscv_0_M_AXI_DC_AWSIZE;
  wire microblaze_riscv_0_M_AXI_DC_AWVALID;
  wire microblaze_riscv_0_M_AXI_DC_BREADY;
  wire [1:0]microblaze_riscv_0_M_AXI_DC_BRESP;
  wire microblaze_riscv_0_M_AXI_DC_BVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_DC_RDATA;
  wire microblaze_riscv_0_M_AXI_DC_RLAST;
  wire microblaze_riscv_0_M_AXI_DC_RREADY;
  wire [1:0]microblaze_riscv_0_M_AXI_DC_RRESP;
  wire microblaze_riscv_0_M_AXI_DC_RVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_DC_WDATA;
  wire microblaze_riscv_0_M_AXI_DC_WLAST;
  wire microblaze_riscv_0_M_AXI_DC_WREADY;
  wire [3:0]microblaze_riscv_0_M_AXI_DC_WSTRB;
  wire microblaze_riscv_0_M_AXI_DC_WVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_IC_ARADDR;
  wire [1:0]microblaze_riscv_0_M_AXI_IC_ARBURST;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_ARCACHE;
  wire [7:0]microblaze_riscv_0_M_AXI_IC_ARLEN;
  wire microblaze_riscv_0_M_AXI_IC_ARLOCK;
  wire [2:0]microblaze_riscv_0_M_AXI_IC_ARPROT;
  wire [3:0]microblaze_riscv_0_M_AXI_IC_ARQOS;
  wire microblaze_riscv_0_M_AXI_IC_ARREADY;
  wire [2:0]microblaze_riscv_0_M_AXI_IC_ARSIZE;
  wire microblaze_riscv_0_M_AXI_IC_ARVALID;
  wire [31:0]microblaze_riscv_0_M_AXI_IC_RDATA;
  wire microblaze_riscv_0_M_AXI_IC_RLAST;
  wire microblaze_riscv_0_M_AXI_IC_RREADY;
  wire [1:0]microblaze_riscv_0_M_AXI_IC_RRESP;
  wire microblaze_riscv_0_M_AXI_IC_RVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_ARADDR;
  wire [2:0]microblaze_riscv_0_axi_dp_ARPROT;
  wire microblaze_riscv_0_axi_dp_ARREADY;
  wire microblaze_riscv_0_axi_dp_ARVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_AWADDR;
  wire [2:0]microblaze_riscv_0_axi_dp_AWPROT;
  wire microblaze_riscv_0_axi_dp_AWREADY;
  wire microblaze_riscv_0_axi_dp_AWVALID;
  wire microblaze_riscv_0_axi_dp_BREADY;
  wire [1:0]microblaze_riscv_0_axi_dp_BRESP;
  wire microblaze_riscv_0_axi_dp_BVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_RDATA;
  wire microblaze_riscv_0_axi_dp_RREADY;
  wire [1:0]microblaze_riscv_0_axi_dp_RRESP;
  wire microblaze_riscv_0_axi_dp_RVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_WDATA;
  wire microblaze_riscv_0_axi_dp_WREADY;
  wire [3:0]microblaze_riscv_0_axi_dp_WSTRB;
  wire microblaze_riscv_0_axi_dp_WVALID;
  wire [9:0]microblaze_riscv_0_axi_periph_M01_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M01_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M01_AXI_ARVALID;
  wire [9:0]microblaze_riscv_0_axi_periph_M01_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M01_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M01_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M01_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M01_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M01_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M01_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M01_AXI_WREADY;
  wire microblaze_riscv_0_axi_periph_M01_AXI_WVALID;
  wire [5:0]microblaze_riscv_0_axi_periph_M02_AXI_ARADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M02_AXI_ARPROT;
  wire microblaze_riscv_0_axi_periph_M02_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M02_AXI_ARVALID;
  wire [5:0]microblaze_riscv_0_axi_periph_M02_AXI_AWADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M02_AXI_AWPROT;
  wire microblaze_riscv_0_axi_periph_M02_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M02_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M02_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M02_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M02_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M02_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M02_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M02_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M03_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M03_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M03_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M03_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M03_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M03_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M03_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M03_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M03_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M03_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M03_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M03_AXI_WVALID;
  wire [28:0]microblaze_riscv_0_axi_periph_M04_AXI_ARADDR;
  wire [1:0]microblaze_riscv_0_axi_periph_M04_AXI_ARBURST;
  wire [3:0]microblaze_riscv_0_axi_periph_M04_AXI_ARCACHE;
  wire [7:0]microblaze_riscv_0_axi_periph_M04_AXI_ARLEN;
  wire [0:0]microblaze_riscv_0_axi_periph_M04_AXI_ARLOCK;
  wire [2:0]microblaze_riscv_0_axi_periph_M04_AXI_ARPROT;
  wire [3:0]microblaze_riscv_0_axi_periph_M04_AXI_ARQOS;
  wire microblaze_riscv_0_axi_periph_M04_AXI_ARREADY;
  wire [2:0]microblaze_riscv_0_axi_periph_M04_AXI_ARSIZE;
  wire microblaze_riscv_0_axi_periph_M04_AXI_ARVALID;
  wire [28:0]microblaze_riscv_0_axi_periph_M04_AXI_AWADDR;
  wire [1:0]microblaze_riscv_0_axi_periph_M04_AXI_AWBURST;
  wire [3:0]microblaze_riscv_0_axi_periph_M04_AXI_AWCACHE;
  wire [7:0]microblaze_riscv_0_axi_periph_M04_AXI_AWLEN;
  wire [0:0]microblaze_riscv_0_axi_periph_M04_AXI_AWLOCK;
  wire [2:0]microblaze_riscv_0_axi_periph_M04_AXI_AWPROT;
  wire [3:0]microblaze_riscv_0_axi_periph_M04_AXI_AWQOS;
  wire microblaze_riscv_0_axi_periph_M04_AXI_AWREADY;
  wire [2:0]microblaze_riscv_0_axi_periph_M04_AXI_AWSIZE;
  wire microblaze_riscv_0_axi_periph_M04_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M04_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M04_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M04_AXI_RLAST;
  wire microblaze_riscv_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M04_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M04_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M04_AXI_WLAST;
  wire microblaze_riscv_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M04_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M04_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M05_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M05_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M05_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M05_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M05_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M05_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M05_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M05_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M05_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M05_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M05_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M05_AXI_WVALID;
  wire [6:0]microblaze_riscv_0_axi_periph_M06_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M06_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M06_AXI_ARVALID;
  wire [6:0]microblaze_riscv_0_axi_periph_M06_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M06_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M06_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M06_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M06_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M06_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M06_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M06_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M06_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M07_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M07_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M07_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M07_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M07_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M07_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M07_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M07_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M07_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M07_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M07_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M07_AXI_WVALID;
  wire microblaze_riscv_0_debug_CAPTURE;
  wire microblaze_riscv_0_debug_CLK;
  wire microblaze_riscv_0_debug_DISABLE;
  wire [0:7]microblaze_riscv_0_debug_REG_EN;
  wire microblaze_riscv_0_debug_RST;
  wire microblaze_riscv_0_debug_SHIFT;
  wire microblaze_riscv_0_debug_TDI;
  wire microblaze_riscv_0_debug_TDO;
  wire microblaze_riscv_0_debug_UPDATE;
  wire [0:31]microblaze_riscv_0_dlmb_1_ABUS;
  wire microblaze_riscv_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_dlmb_1_BE;
  wire microblaze_riscv_0_dlmb_1_CE;
  wire [0:31]microblaze_riscv_0_dlmb_1_READDBUS;
  wire microblaze_riscv_0_dlmb_1_READSTROBE;
  wire microblaze_riscv_0_dlmb_1_READY;
  wire microblaze_riscv_0_dlmb_1_UE;
  wire microblaze_riscv_0_dlmb_1_WAIT;
  wire [0:31]microblaze_riscv_0_dlmb_1_WRITEDBUS;
  wire microblaze_riscv_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_riscv_0_ilmb_1_ABUS;
  wire microblaze_riscv_0_ilmb_1_ADDRSTROBE;
  wire microblaze_riscv_0_ilmb_1_CE;
  wire [0:31]microblaze_riscv_0_ilmb_1_READDBUS;
  wire microblaze_riscv_0_ilmb_1_READSTROBE;
  wire microblaze_riscv_0_ilmb_1_READY;
  wire microblaze_riscv_0_ilmb_1_UE;
  wire microblaze_riscv_0_ilmb_1_WAIT;
  wire [8:0]microblaze_riscv_0_intc_axi_ARADDR;
  wire microblaze_riscv_0_intc_axi_ARREADY;
  wire microblaze_riscv_0_intc_axi_ARVALID;
  wire [8:0]microblaze_riscv_0_intc_axi_AWADDR;
  wire microblaze_riscv_0_intc_axi_AWREADY;
  wire microblaze_riscv_0_intc_axi_AWVALID;
  wire microblaze_riscv_0_intc_axi_BREADY;
  wire [1:0]microblaze_riscv_0_intc_axi_BRESP;
  wire microblaze_riscv_0_intc_axi_BVALID;
  wire [31:0]microblaze_riscv_0_intc_axi_RDATA;
  wire microblaze_riscv_0_intc_axi_RREADY;
  wire [1:0]microblaze_riscv_0_intc_axi_RRESP;
  wire microblaze_riscv_0_intc_axi_RVALID;
  wire [31:0]microblaze_riscv_0_intc_axi_WDATA;
  wire microblaze_riscv_0_intc_axi_WREADY;
  wire [3:0]microblaze_riscv_0_intc_axi_WSTRB;
  wire microblaze_riscv_0_intc_axi_WVALID;
  wire [0:1]microblaze_riscv_0_interrupt_ACK;
  wire [31:0]microblaze_riscv_0_interrupt_ADDRESS;
  wire microblaze_riscv_0_interrupt_INTERRUPT;
  wire [3:0]microblaze_riscv_0_intr;
  wire mig_7series_0_ui_addn_clk_0;
  wire oled_pin10_i;
  wire oled_pin10_o;
  wire oled_pin10_t;
  wire oled_pin2_i;
  wire oled_pin2_o;
  wire oled_pin2_t;
  wire oled_pin4_i;
  wire oled_pin4_o;
  wire oled_pin4_t;
  wire oled_pin7_i;
  wire oled_pin7_o;
  wire oled_pin7_t;
  wire oled_pin8_i;
  wire oled_pin8_o;
  wire oled_pin8_t;
  wire oled_pin9_i;
  wire oled_pin9_o;
  wire oled_pin9_t;
  wire reset;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire sys_clk_i;

  assign BCLK_O[0] = \^BCLK_O ;
  assign LRCLK_O[0] = \^LRCLK_O ;
  assign SDATA_O[0] = \^SDATA_O ;
  block_design_PmodOLED_0_0 PmodOLED_0
       (.AXI_LITE_GPIO_araddr(microblaze_riscv_0_axi_periph_M05_AXI_ARADDR),
        .AXI_LITE_GPIO_arready(microblaze_riscv_0_axi_periph_M05_AXI_ARREADY),
        .AXI_LITE_GPIO_arvalid(microblaze_riscv_0_axi_periph_M05_AXI_ARVALID),
        .AXI_LITE_GPIO_awaddr(microblaze_riscv_0_axi_periph_M05_AXI_AWADDR),
        .AXI_LITE_GPIO_awready(microblaze_riscv_0_axi_periph_M05_AXI_AWREADY),
        .AXI_LITE_GPIO_awvalid(microblaze_riscv_0_axi_periph_M05_AXI_AWVALID),
        .AXI_LITE_GPIO_bready(microblaze_riscv_0_axi_periph_M05_AXI_BREADY),
        .AXI_LITE_GPIO_bresp(microblaze_riscv_0_axi_periph_M05_AXI_BRESP),
        .AXI_LITE_GPIO_bvalid(microblaze_riscv_0_axi_periph_M05_AXI_BVALID),
        .AXI_LITE_GPIO_rdata(microblaze_riscv_0_axi_periph_M05_AXI_RDATA),
        .AXI_LITE_GPIO_rready(microblaze_riscv_0_axi_periph_M05_AXI_RREADY),
        .AXI_LITE_GPIO_rresp(microblaze_riscv_0_axi_periph_M05_AXI_RRESP),
        .AXI_LITE_GPIO_rvalid(microblaze_riscv_0_axi_periph_M05_AXI_RVALID),
        .AXI_LITE_GPIO_wdata(microblaze_riscv_0_axi_periph_M05_AXI_WDATA),
        .AXI_LITE_GPIO_wready(microblaze_riscv_0_axi_periph_M05_AXI_WREADY),
        .AXI_LITE_GPIO_wstrb(microblaze_riscv_0_axi_periph_M05_AXI_WSTRB),
        .AXI_LITE_GPIO_wvalid(microblaze_riscv_0_axi_periph_M05_AXI_WVALID),
        .AXI_LITE_SPI_araddr(microblaze_riscv_0_axi_periph_M06_AXI_ARADDR),
        .AXI_LITE_SPI_arready(microblaze_riscv_0_axi_periph_M06_AXI_ARREADY),
        .AXI_LITE_SPI_arvalid(microblaze_riscv_0_axi_periph_M06_AXI_ARVALID),
        .AXI_LITE_SPI_awaddr(microblaze_riscv_0_axi_periph_M06_AXI_AWADDR),
        .AXI_LITE_SPI_awready(microblaze_riscv_0_axi_periph_M06_AXI_AWREADY),
        .AXI_LITE_SPI_awvalid(microblaze_riscv_0_axi_periph_M06_AXI_AWVALID),
        .AXI_LITE_SPI_bready(microblaze_riscv_0_axi_periph_M06_AXI_BREADY),
        .AXI_LITE_SPI_bresp(microblaze_riscv_0_axi_periph_M06_AXI_BRESP),
        .AXI_LITE_SPI_bvalid(microblaze_riscv_0_axi_periph_M06_AXI_BVALID),
        .AXI_LITE_SPI_rdata(microblaze_riscv_0_axi_periph_M06_AXI_RDATA),
        .AXI_LITE_SPI_rready(microblaze_riscv_0_axi_periph_M06_AXI_RREADY),
        .AXI_LITE_SPI_rresp(microblaze_riscv_0_axi_periph_M06_AXI_RRESP),
        .AXI_LITE_SPI_rvalid(microblaze_riscv_0_axi_periph_M06_AXI_RVALID),
        .AXI_LITE_SPI_wdata(microblaze_riscv_0_axi_periph_M06_AXI_WDATA),
        .AXI_LITE_SPI_wready(microblaze_riscv_0_axi_periph_M06_AXI_WREADY),
        .AXI_LITE_SPI_wstrb(microblaze_riscv_0_axi_periph_M06_AXI_WSTRB),
        .AXI_LITE_SPI_wvalid(microblaze_riscv_0_axi_periph_M06_AXI_WVALID),
        .Pmod_out_pin10_i(oled_pin10_i),
        .Pmod_out_pin10_o(oled_pin10_o),
        .Pmod_out_pin10_t(oled_pin10_t),
        .Pmod_out_pin1_i(1'b0),
        .Pmod_out_pin2_i(oled_pin2_i),
        .Pmod_out_pin2_o(oled_pin2_o),
        .Pmod_out_pin2_t(oled_pin2_t),
        .Pmod_out_pin3_i(1'b0),
        .Pmod_out_pin4_i(oled_pin4_i),
        .Pmod_out_pin4_o(oled_pin4_o),
        .Pmod_out_pin4_t(oled_pin4_t),
        .Pmod_out_pin7_i(oled_pin7_i),
        .Pmod_out_pin7_o(oled_pin7_o),
        .Pmod_out_pin7_t(oled_pin7_t),
        .Pmod_out_pin8_i(oled_pin8_i),
        .Pmod_out_pin8_o(oled_pin8_o),
        .Pmod_out_pin8_t(oled_pin8_t),
        .Pmod_out_pin9_i(oled_pin9_i),
        .Pmod_out_pin9_o(oled_pin9_o),
        .Pmod_out_pin9_t(oled_pin9_t),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn));
  block_design_axi_dma_0_0 axi_dma_0
       (.axi_resetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .m_axi_mm2s_aclk(microblaze_riscv_0_Clk),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(microblaze_riscv_0_Clk),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(microblaze_riscv_0_Clk),
        .m_axi_sg_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_dma_0_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_dma_0_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_dma_0_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .m_axis_mm2s_cntrl_tready(1'b1),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_0_mm2s_introut),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(microblaze_riscv_0_Clk),
        .s_axi_lite_araddr(microblaze_riscv_0_axi_periph_M01_AXI_ARADDR),
        .s_axi_lite_arready(microblaze_riscv_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(microblaze_riscv_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(microblaze_riscv_0_axi_periph_M01_AXI_AWADDR),
        .s_axi_lite_awready(microblaze_riscv_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(microblaze_riscv_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_lite_bready(microblaze_riscv_0_axi_periph_M01_AXI_BREADY),
        .s_axi_lite_bresp(microblaze_riscv_0_axi_periph_M01_AXI_BRESP),
        .s_axi_lite_bvalid(microblaze_riscv_0_axi_periph_M01_AXI_BVALID),
        .s_axi_lite_rdata(microblaze_riscv_0_axi_periph_M01_AXI_RDATA),
        .s_axi_lite_rready(microblaze_riscv_0_axi_periph_M01_AXI_RREADY),
        .s_axi_lite_rresp(microblaze_riscv_0_axi_periph_M01_AXI_RRESP),
        .s_axi_lite_rvalid(microblaze_riscv_0_axi_periph_M01_AXI_RVALID),
        .s_axi_lite_wdata(microblaze_riscv_0_axi_periph_M01_AXI_WDATA),
        .s_axi_lite_wready(microblaze_riscv_0_axi_periph_M01_AXI_WREADY),
        .s_axi_lite_wvalid(microblaze_riscv_0_axi_periph_M01_AXI_WVALID),
        .s_axis_s2mm_sts_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_s2mm_sts_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_sts_tlast(1'b0),
        .s_axis_s2mm_sts_tvalid(1'b0),
        .s_axis_s2mm_tdata(d_axi_i2s_audio_0_AXI_S2MM_TDATA),
        .s_axis_s2mm_tkeep(d_axi_i2s_audio_0_AXI_S2MM_TKEEP),
        .s_axis_s2mm_tlast(d_axi_i2s_audio_0_AXI_S2MM_TLAST),
        .s_axis_s2mm_tready(d_axi_i2s_audio_0_AXI_S2MM_TREADY),
        .s_axis_s2mm_tvalid(d_axi_i2s_audio_0_AXI_S2MM_TVALID));
  block_design_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(dip_switches_8bits_tri_i),
        .gpio_io_o(led_8bits_tri_o),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M07_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M07_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M07_AXI_WVALID));
  block_design_axi_iic_0_0 axi_iic_0
       (.iic2intc_irpt(axi_iic_0_iic2intc_irpt),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M03_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M03_AXI_WVALID),
        .scl_i(iic_rtl_scl_i),
        .scl_o(iic_rtl_scl_o),
        .scl_t(iic_rtl_scl_t),
        .sda_i(iic_rtl_sda_i),
        .sda_o(iic_rtl_sda_o),
        .sda_t(iic_rtl_sda_t));
  block_design_d_axi_i2s_audio_0_0 d_axi_i2s_audio_0
       (.AXI_L_aclk(microblaze_riscv_0_Clk),
        .AXI_L_araddr(microblaze_riscv_0_axi_periph_M02_AXI_ARADDR),
        .AXI_L_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .AXI_L_arprot(microblaze_riscv_0_axi_periph_M02_AXI_ARPROT),
        .AXI_L_arready(microblaze_riscv_0_axi_periph_M02_AXI_ARREADY),
        .AXI_L_arvalid(microblaze_riscv_0_axi_periph_M02_AXI_ARVALID),
        .AXI_L_awaddr(microblaze_riscv_0_axi_periph_M02_AXI_AWADDR),
        .AXI_L_awprot(microblaze_riscv_0_axi_periph_M02_AXI_AWPROT),
        .AXI_L_awready(microblaze_riscv_0_axi_periph_M02_AXI_AWREADY),
        .AXI_L_awvalid(microblaze_riscv_0_axi_periph_M02_AXI_AWVALID),
        .AXI_L_bready(microblaze_riscv_0_axi_periph_M02_AXI_BREADY),
        .AXI_L_bresp(microblaze_riscv_0_axi_periph_M02_AXI_BRESP),
        .AXI_L_bvalid(microblaze_riscv_0_axi_periph_M02_AXI_BVALID),
        .AXI_L_rdata(microblaze_riscv_0_axi_periph_M02_AXI_RDATA),
        .AXI_L_rready(microblaze_riscv_0_axi_periph_M02_AXI_RREADY),
        .AXI_L_rresp(microblaze_riscv_0_axi_periph_M02_AXI_RRESP),
        .AXI_L_rvalid(microblaze_riscv_0_axi_periph_M02_AXI_RVALID),
        .AXI_L_wdata(microblaze_riscv_0_axi_periph_M02_AXI_WDATA),
        .AXI_L_wready(microblaze_riscv_0_axi_periph_M02_AXI_WREADY),
        .AXI_L_wstrb(microblaze_riscv_0_axi_periph_M02_AXI_WSTRB),
        .AXI_L_wvalid(microblaze_riscv_0_axi_periph_M02_AXI_WVALID),
        .BCLK_O(\^BCLK_O ),
        .CLK_100MHZ_I(microblaze_riscv_0_Clk),
        .LRCLK_O(\^LRCLK_O ),
        .MCLK_O(MCLK_O),
        .M_AXIS_S2MM_ACLK(microblaze_riscv_0_Clk),
        .M_AXIS_S2MM_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M_AXIS_S2MM_TDATA(d_axi_i2s_audio_0_AXI_S2MM_TDATA),
        .M_AXIS_S2MM_TKEEP(d_axi_i2s_audio_0_AXI_S2MM_TKEEP),
        .M_AXIS_S2MM_TLAST(d_axi_i2s_audio_0_AXI_S2MM_TLAST),
        .M_AXIS_S2MM_TREADY(d_axi_i2s_audio_0_AXI_S2MM_TREADY),
        .M_AXIS_S2MM_TVALID(d_axi_i2s_audio_0_AXI_S2MM_TVALID),
        .SDATA_I(SDATA_I),
        .SDATA_O(\^SDATA_O ),
        .S_AXIS_MM2S_ACLK(microblaze_riscv_0_Clk),
        .S_AXIS_MM2S_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S_AXIS_MM2S_TDATA(axi_dma_0_M_AXIS_MM2S_TDATA),
        .S_AXIS_MM2S_TKEEP(axi_dma_0_M_AXIS_MM2S_TKEEP),
        .S_AXIS_MM2S_TLAST(axi_dma_0_M_AXIS_MM2S_TLAST),
        .S_AXIS_MM2S_TREADY(axi_dma_0_M_AXIS_MM2S_TREADY),
        .S_AXIS_MM2S_TVALID(axi_dma_0_M_AXIS_MM2S_TVALID));
  block_design_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_riscv_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_riscv_0_debug_CLK),
        .Dbg_Disable_0(microblaze_riscv_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_riscv_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_riscv_0_debug_RST),
        .Dbg_Shift_0(microblaze_riscv_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_riscv_0_debug_TDI),
        .Dbg_TDO_0(microblaze_riscv_0_debug_TDO),
        .Dbg_Update_0(microblaze_riscv_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "riscv > block_design microblaze_riscv_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  block_design_microblaze_riscv_0_0 microblaze_riscv_0
       (.Byte_Enable(microblaze_riscv_0_dlmb_1_BE),
        .Clk(microblaze_riscv_0_Clk),
        .DCE(microblaze_riscv_0_dlmb_1_CE),
        .DReady(microblaze_riscv_0_dlmb_1_READY),
        .DUE(microblaze_riscv_0_dlmb_1_UE),
        .DWait(microblaze_riscv_0_dlmb_1_WAIT),
        .D_AS(microblaze_riscv_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_riscv_0_dlmb_1_ABUS),
        .Data_Read(microblaze_riscv_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_riscv_0_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_riscv_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_riscv_0_debug_CLK),
        .Dbg_Disable(microblaze_riscv_0_debug_DISABLE),
        .Dbg_Reg_En(microblaze_riscv_0_debug_REG_EN),
        .Dbg_Shift(microblaze_riscv_0_debug_SHIFT),
        .Dbg_TDI(microblaze_riscv_0_debug_TDI),
        .Dbg_TDO(microblaze_riscv_0_debug_TDO),
        .Dbg_Trig_Ack_In({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Trig_Out({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Update(microblaze_riscv_0_debug_UPDATE),
        .Debug_Rst(microblaze_riscv_0_debug_RST),
        .ICE(microblaze_riscv_0_ilmb_1_CE),
        .IFetch(microblaze_riscv_0_ilmb_1_READSTROBE),
        .IReady(microblaze_riscv_0_ilmb_1_READY),
        .IUE(microblaze_riscv_0_ilmb_1_UE),
        .IWAIT(microblaze_riscv_0_ilmb_1_WAIT),
        .I_AS(microblaze_riscv_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_riscv_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_riscv_0_ilmb_1_ABUS),
        .Interrupt(microblaze_riscv_0_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_riscv_0_interrupt_ACK),
        .Interrupt_Address({microblaze_riscv_0_interrupt_ADDRESS[31],microblaze_riscv_0_interrupt_ADDRESS[30],microblaze_riscv_0_interrupt_ADDRESS[29],microblaze_riscv_0_interrupt_ADDRESS[28],microblaze_riscv_0_interrupt_ADDRESS[27],microblaze_riscv_0_interrupt_ADDRESS[26],microblaze_riscv_0_interrupt_ADDRESS[25],microblaze_riscv_0_interrupt_ADDRESS[24],microblaze_riscv_0_interrupt_ADDRESS[23],microblaze_riscv_0_interrupt_ADDRESS[22],microblaze_riscv_0_interrupt_ADDRESS[21],microblaze_riscv_0_interrupt_ADDRESS[20],microblaze_riscv_0_interrupt_ADDRESS[19],microblaze_riscv_0_interrupt_ADDRESS[18],microblaze_riscv_0_interrupt_ADDRESS[17],microblaze_riscv_0_interrupt_ADDRESS[16],microblaze_riscv_0_interrupt_ADDRESS[15],microblaze_riscv_0_interrupt_ADDRESS[14],microblaze_riscv_0_interrupt_ADDRESS[13],microblaze_riscv_0_interrupt_ADDRESS[12],microblaze_riscv_0_interrupt_ADDRESS[11],microblaze_riscv_0_interrupt_ADDRESS[10],microblaze_riscv_0_interrupt_ADDRESS[9],microblaze_riscv_0_interrupt_ADDRESS[8],microblaze_riscv_0_interrupt_ADDRESS[7],microblaze_riscv_0_interrupt_ADDRESS[6],microblaze_riscv_0_interrupt_ADDRESS[5],microblaze_riscv_0_interrupt_ADDRESS[4],microblaze_riscv_0_interrupt_ADDRESS[3],microblaze_riscv_0_interrupt_ADDRESS[2],microblaze_riscv_0_interrupt_ADDRESS[1],microblaze_riscv_0_interrupt_ADDRESS[0]}),
        .M_AXI_DC_ARADDR(microblaze_riscv_0_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(microblaze_riscv_0_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(microblaze_riscv_0_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARLEN(microblaze_riscv_0_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(microblaze_riscv_0_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(microblaze_riscv_0_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(microblaze_riscv_0_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(microblaze_riscv_0_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(microblaze_riscv_0_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(microblaze_riscv_0_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(microblaze_riscv_0_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(microblaze_riscv_0_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(microblaze_riscv_0_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWLEN(microblaze_riscv_0_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(microblaze_riscv_0_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(microblaze_riscv_0_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(microblaze_riscv_0_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(microblaze_riscv_0_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(microblaze_riscv_0_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(microblaze_riscv_0_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(1'b0),
        .M_AXI_DC_BREADY(microblaze_riscv_0_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(microblaze_riscv_0_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(microblaze_riscv_0_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(microblaze_riscv_0_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(1'b0),
        .M_AXI_DC_RLAST(microblaze_riscv_0_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(microblaze_riscv_0_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(microblaze_riscv_0_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(microblaze_riscv_0_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(microblaze_riscv_0_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(microblaze_riscv_0_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(microblaze_riscv_0_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(microblaze_riscv_0_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(microblaze_riscv_0_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(microblaze_riscv_0_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_riscv_0_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_riscv_0_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_riscv_0_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_riscv_0_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_riscv_0_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_riscv_0_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_riscv_0_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_riscv_0_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_riscv_0_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_riscv_0_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_riscv_0_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_riscv_0_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_riscv_0_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_riscv_0_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_riscv_0_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_riscv_0_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_riscv_0_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_riscv_0_axi_dp_WVALID),
        .M_AXI_IC_ARADDR(microblaze_riscv_0_M_AXI_IC_ARADDR),
        .M_AXI_IC_ARBURST(microblaze_riscv_0_M_AXI_IC_ARBURST),
        .M_AXI_IC_ARCACHE(microblaze_riscv_0_M_AXI_IC_ARCACHE),
        .M_AXI_IC_ARLEN(microblaze_riscv_0_M_AXI_IC_ARLEN),
        .M_AXI_IC_ARLOCK(microblaze_riscv_0_M_AXI_IC_ARLOCK),
        .M_AXI_IC_ARPROT(microblaze_riscv_0_M_AXI_IC_ARPROT),
        .M_AXI_IC_ARQOS(microblaze_riscv_0_M_AXI_IC_ARQOS),
        .M_AXI_IC_ARREADY(microblaze_riscv_0_M_AXI_IC_ARREADY),
        .M_AXI_IC_ARSIZE(microblaze_riscv_0_M_AXI_IC_ARSIZE),
        .M_AXI_IC_ARVALID(microblaze_riscv_0_M_AXI_IC_ARVALID),
        .M_AXI_IC_AWREADY(1'b0),
        .M_AXI_IC_BID(1'b0),
        .M_AXI_IC_BRESP({1'b0,1'b0}),
        .M_AXI_IC_BVALID(1'b0),
        .M_AXI_IC_RDATA(microblaze_riscv_0_M_AXI_IC_RDATA),
        .M_AXI_IC_RID(1'b0),
        .M_AXI_IC_RLAST(microblaze_riscv_0_M_AXI_IC_RLAST),
        .M_AXI_IC_RREADY(microblaze_riscv_0_M_AXI_IC_RREADY),
        .M_AXI_IC_RRESP(microblaze_riscv_0_M_AXI_IC_RRESP),
        .M_AXI_IC_RVALID(microblaze_riscv_0_M_AXI_IC_RVALID),
        .M_AXI_IC_WREADY(1'b0),
        .Read_Strobe(microblaze_riscv_0_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_1_100M_mb_reset),
        .Write_Strobe(microblaze_riscv_0_dlmb_1_WRITESTROBE));
  block_design_microblaze_riscv_0_axi_intc_0 microblaze_riscv_0_axi_intc
       (.interrupt_address(microblaze_riscv_0_interrupt_ADDRESS),
        .intr(microblaze_riscv_0_intr),
        .irq(microblaze_riscv_0_interrupt_INTERRUPT),
        .processor_ack({microblaze_riscv_0_interrupt_ACK[0],microblaze_riscv_0_interrupt_ACK[1]}),
        .processor_clk(microblaze_riscv_0_Clk),
        .processor_rst(rst_clk_wiz_1_100M_mb_reset),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_intc_axi_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_intc_axi_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_intc_axi_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_intc_axi_AWADDR),
        .s_axi_awready(microblaze_riscv_0_intc_axi_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_intc_axi_AWVALID),
        .s_axi_bready(microblaze_riscv_0_intc_axi_BREADY),
        .s_axi_bresp(microblaze_riscv_0_intc_axi_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_intc_axi_BVALID),
        .s_axi_rdata(microblaze_riscv_0_intc_axi_RDATA),
        .s_axi_rready(microblaze_riscv_0_intc_axi_RREADY),
        .s_axi_rresp(microblaze_riscv_0_intc_axi_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_intc_axi_RVALID),
        .s_axi_wdata(microblaze_riscv_0_intc_axi_WDATA),
        .s_axi_wready(microblaze_riscv_0_intc_axi_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_intc_axi_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_intc_axi_WVALID));
  block_design_microblaze_riscv_0_axi_periph_0 microblaze_riscv_0_axi_periph
       (.M00_AXI_araddr(microblaze_riscv_0_intc_axi_ARADDR),
        .M00_AXI_arready(microblaze_riscv_0_intc_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_riscv_0_intc_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_riscv_0_intc_axi_AWADDR),
        .M00_AXI_awready(microblaze_riscv_0_intc_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_riscv_0_intc_axi_AWVALID),
        .M00_AXI_bready(microblaze_riscv_0_intc_axi_BREADY),
        .M00_AXI_bresp(microblaze_riscv_0_intc_axi_BRESP),
        .M00_AXI_bvalid(microblaze_riscv_0_intc_axi_BVALID),
        .M00_AXI_rdata(microblaze_riscv_0_intc_axi_RDATA),
        .M00_AXI_rready(microblaze_riscv_0_intc_axi_RREADY),
        .M00_AXI_rresp(microblaze_riscv_0_intc_axi_RRESP),
        .M00_AXI_rvalid(microblaze_riscv_0_intc_axi_RVALID),
        .M00_AXI_wdata(microblaze_riscv_0_intc_axi_WDATA),
        .M00_AXI_wready(microblaze_riscv_0_intc_axi_WREADY),
        .M00_AXI_wstrb(microblaze_riscv_0_intc_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_riscv_0_intc_axi_WVALID),
        .M01_AXI_araddr(microblaze_riscv_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(microblaze_riscv_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(microblaze_riscv_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_riscv_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(microblaze_riscv_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(microblaze_riscv_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_riscv_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_riscv_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_riscv_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_riscv_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(microblaze_riscv_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_riscv_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_riscv_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_riscv_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(microblaze_riscv_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wvalid(microblaze_riscv_0_axi_periph_M01_AXI_WVALID),
        .M02_AXI_araddr(microblaze_riscv_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arprot(microblaze_riscv_0_axi_periph_M02_AXI_ARPROT),
        .M02_AXI_arready(microblaze_riscv_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(microblaze_riscv_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(microblaze_riscv_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awprot(microblaze_riscv_0_axi_periph_M02_AXI_AWPROT),
        .M02_AXI_awready(microblaze_riscv_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(microblaze_riscv_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(microblaze_riscv_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(microblaze_riscv_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(microblaze_riscv_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(microblaze_riscv_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(microblaze_riscv_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(microblaze_riscv_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(microblaze_riscv_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(microblaze_riscv_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(microblaze_riscv_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(microblaze_riscv_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(microblaze_riscv_0_axi_periph_M02_AXI_WVALID),
        .M03_AXI_araddr(microblaze_riscv_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(microblaze_riscv_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(microblaze_riscv_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(microblaze_riscv_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(microblaze_riscv_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(microblaze_riscv_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(microblaze_riscv_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(microblaze_riscv_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(microblaze_riscv_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(microblaze_riscv_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(microblaze_riscv_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(microblaze_riscv_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(microblaze_riscv_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(microblaze_riscv_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(microblaze_riscv_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(microblaze_riscv_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(microblaze_riscv_0_axi_periph_M03_AXI_WVALID),
        .M04_AXI_araddr(microblaze_riscv_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arburst(microblaze_riscv_0_axi_periph_M04_AXI_ARBURST),
        .M04_AXI_arcache(microblaze_riscv_0_axi_periph_M04_AXI_ARCACHE),
        .M04_AXI_arlen(microblaze_riscv_0_axi_periph_M04_AXI_ARLEN),
        .M04_AXI_arlock(microblaze_riscv_0_axi_periph_M04_AXI_ARLOCK),
        .M04_AXI_arprot(microblaze_riscv_0_axi_periph_M04_AXI_ARPROT),
        .M04_AXI_arqos(microblaze_riscv_0_axi_periph_M04_AXI_ARQOS),
        .M04_AXI_arready(microblaze_riscv_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arsize(microblaze_riscv_0_axi_periph_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(microblaze_riscv_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(microblaze_riscv_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awburst(microblaze_riscv_0_axi_periph_M04_AXI_AWBURST),
        .M04_AXI_awcache(microblaze_riscv_0_axi_periph_M04_AXI_AWCACHE),
        .M04_AXI_awlen(microblaze_riscv_0_axi_periph_M04_AXI_AWLEN),
        .M04_AXI_awlock(microblaze_riscv_0_axi_periph_M04_AXI_AWLOCK),
        .M04_AXI_awprot(microblaze_riscv_0_axi_periph_M04_AXI_AWPROT),
        .M04_AXI_awqos(microblaze_riscv_0_axi_periph_M04_AXI_AWQOS),
        .M04_AXI_awready(microblaze_riscv_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awsize(microblaze_riscv_0_axi_periph_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(microblaze_riscv_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(microblaze_riscv_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(microblaze_riscv_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(microblaze_riscv_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(microblaze_riscv_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rlast(microblaze_riscv_0_axi_periph_M04_AXI_RLAST),
        .M04_AXI_rready(microblaze_riscv_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(microblaze_riscv_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(microblaze_riscv_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(microblaze_riscv_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wlast(microblaze_riscv_0_axi_periph_M04_AXI_WLAST),
        .M04_AXI_wready(microblaze_riscv_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(microblaze_riscv_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(microblaze_riscv_0_axi_periph_M04_AXI_WVALID),
        .M05_AXI_araddr(microblaze_riscv_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(microblaze_riscv_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(microblaze_riscv_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(microblaze_riscv_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(microblaze_riscv_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(microblaze_riscv_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(microblaze_riscv_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(microblaze_riscv_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(microblaze_riscv_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(microblaze_riscv_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(microblaze_riscv_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(microblaze_riscv_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(microblaze_riscv_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(microblaze_riscv_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(microblaze_riscv_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(microblaze_riscv_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(microblaze_riscv_0_axi_periph_M05_AXI_WVALID),
        .M06_AXI_araddr(microblaze_riscv_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(microblaze_riscv_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(microblaze_riscv_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(microblaze_riscv_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(microblaze_riscv_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(microblaze_riscv_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(microblaze_riscv_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(microblaze_riscv_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(microblaze_riscv_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(microblaze_riscv_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(microblaze_riscv_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(microblaze_riscv_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(microblaze_riscv_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(microblaze_riscv_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(microblaze_riscv_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(microblaze_riscv_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(microblaze_riscv_0_axi_periph_M06_AXI_WVALID),
        .M07_AXI_araddr(microblaze_riscv_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arready(microblaze_riscv_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(microblaze_riscv_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(microblaze_riscv_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awready(microblaze_riscv_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(microblaze_riscv_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(microblaze_riscv_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(microblaze_riscv_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(microblaze_riscv_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(microblaze_riscv_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(microblaze_riscv_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(microblaze_riscv_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(microblaze_riscv_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(microblaze_riscv_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(microblaze_riscv_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(microblaze_riscv_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(microblaze_riscv_0_axi_periph_M07_AXI_WVALID),
        .S00_AXI_araddr(microblaze_riscv_0_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_riscv_0_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_riscv_0_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_riscv_0_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_riscv_0_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_riscv_0_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_riscv_0_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_riscv_0_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_riscv_0_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_riscv_0_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_riscv_0_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_riscv_0_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_riscv_0_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_riscv_0_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_riscv_0_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_riscv_0_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_riscv_0_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_riscv_0_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_riscv_0_axi_dp_WVALID),
        .S01_AXI_araddr(microblaze_riscv_0_M_AXI_DC_ARADDR),
        .S01_AXI_arburst(microblaze_riscv_0_M_AXI_DC_ARBURST),
        .S01_AXI_arcache(microblaze_riscv_0_M_AXI_DC_ARCACHE),
        .S01_AXI_arlen(microblaze_riscv_0_M_AXI_DC_ARLEN),
        .S01_AXI_arlock(microblaze_riscv_0_M_AXI_DC_ARLOCK),
        .S01_AXI_arprot(microblaze_riscv_0_M_AXI_DC_ARPROT),
        .S01_AXI_arqos(microblaze_riscv_0_M_AXI_DC_ARQOS),
        .S01_AXI_arready(microblaze_riscv_0_M_AXI_DC_ARREADY),
        .S01_AXI_arsize(microblaze_riscv_0_M_AXI_DC_ARSIZE),
        .S01_AXI_arvalid(microblaze_riscv_0_M_AXI_DC_ARVALID),
        .S01_AXI_awaddr(microblaze_riscv_0_M_AXI_DC_AWADDR),
        .S01_AXI_awburst(microblaze_riscv_0_M_AXI_DC_AWBURST),
        .S01_AXI_awcache(microblaze_riscv_0_M_AXI_DC_AWCACHE),
        .S01_AXI_awlen(microblaze_riscv_0_M_AXI_DC_AWLEN),
        .S01_AXI_awlock(microblaze_riscv_0_M_AXI_DC_AWLOCK),
        .S01_AXI_awprot(microblaze_riscv_0_M_AXI_DC_AWPROT),
        .S01_AXI_awqos(microblaze_riscv_0_M_AXI_DC_AWQOS),
        .S01_AXI_awready(microblaze_riscv_0_M_AXI_DC_AWREADY),
        .S01_AXI_awsize(microblaze_riscv_0_M_AXI_DC_AWSIZE),
        .S01_AXI_awvalid(microblaze_riscv_0_M_AXI_DC_AWVALID),
        .S01_AXI_bready(microblaze_riscv_0_M_AXI_DC_BREADY),
        .S01_AXI_bresp(microblaze_riscv_0_M_AXI_DC_BRESP),
        .S01_AXI_bvalid(microblaze_riscv_0_M_AXI_DC_BVALID),
        .S01_AXI_rdata(microblaze_riscv_0_M_AXI_DC_RDATA),
        .S01_AXI_rlast(microblaze_riscv_0_M_AXI_DC_RLAST),
        .S01_AXI_rready(microblaze_riscv_0_M_AXI_DC_RREADY),
        .S01_AXI_rresp(microblaze_riscv_0_M_AXI_DC_RRESP),
        .S01_AXI_rvalid(microblaze_riscv_0_M_AXI_DC_RVALID),
        .S01_AXI_wdata(microblaze_riscv_0_M_AXI_DC_WDATA),
        .S01_AXI_wlast(microblaze_riscv_0_M_AXI_DC_WLAST),
        .S01_AXI_wready(microblaze_riscv_0_M_AXI_DC_WREADY),
        .S01_AXI_wstrb(microblaze_riscv_0_M_AXI_DC_WSTRB),
        .S01_AXI_wvalid(microblaze_riscv_0_M_AXI_DC_WVALID),
        .S02_AXI_araddr(microblaze_riscv_0_M_AXI_IC_ARADDR),
        .S02_AXI_arburst(microblaze_riscv_0_M_AXI_IC_ARBURST),
        .S02_AXI_arcache(microblaze_riscv_0_M_AXI_IC_ARCACHE),
        .S02_AXI_arlen(microblaze_riscv_0_M_AXI_IC_ARLEN),
        .S02_AXI_arlock(microblaze_riscv_0_M_AXI_IC_ARLOCK),
        .S02_AXI_arprot(microblaze_riscv_0_M_AXI_IC_ARPROT),
        .S02_AXI_arqos(microblaze_riscv_0_M_AXI_IC_ARQOS),
        .S02_AXI_arready(microblaze_riscv_0_M_AXI_IC_ARREADY),
        .S02_AXI_arsize(microblaze_riscv_0_M_AXI_IC_ARSIZE),
        .S02_AXI_arvalid(microblaze_riscv_0_M_AXI_IC_ARVALID),
        .S02_AXI_rdata(microblaze_riscv_0_M_AXI_IC_RDATA),
        .S02_AXI_rlast(microblaze_riscv_0_M_AXI_IC_RLAST),
        .S02_AXI_rready(microblaze_riscv_0_M_AXI_IC_RREADY),
        .S02_AXI_rresp(microblaze_riscv_0_M_AXI_IC_RRESP),
        .S02_AXI_rvalid(microblaze_riscv_0_M_AXI_IC_RVALID),
        .S03_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S03_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S03_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S03_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S03_AXI_arlock(1'b0),
        .S03_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S03_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S03_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S03_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S03_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S03_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S03_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S03_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S03_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S04_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S04_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S04_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S04_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S04_AXI_awlock(1'b0),
        .S04_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S04_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S04_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S04_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S04_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S04_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S04_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S04_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S04_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S04_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S04_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S04_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .S05_AXI_araddr(axi_dma_0_M_AXI_SG_ARADDR),
        .S05_AXI_arburst(axi_dma_0_M_AXI_SG_ARBURST),
        .S05_AXI_arcache(axi_dma_0_M_AXI_SG_ARCACHE),
        .S05_AXI_arlen(axi_dma_0_M_AXI_SG_ARLEN),
        .S05_AXI_arlock(1'b0),
        .S05_AXI_arprot(axi_dma_0_M_AXI_SG_ARPROT),
        .S05_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_arready(axi_dma_0_M_AXI_SG_ARREADY),
        .S05_AXI_arsize(axi_dma_0_M_AXI_SG_ARSIZE),
        .S05_AXI_arvalid(axi_dma_0_M_AXI_SG_ARVALID),
        .S05_AXI_awaddr(axi_dma_0_M_AXI_SG_AWADDR),
        .S05_AXI_awburst(axi_dma_0_M_AXI_SG_AWBURST),
        .S05_AXI_awcache(axi_dma_0_M_AXI_SG_AWCACHE),
        .S05_AXI_awlen(axi_dma_0_M_AXI_SG_AWLEN),
        .S05_AXI_awlock(1'b0),
        .S05_AXI_awprot(axi_dma_0_M_AXI_SG_AWPROT),
        .S05_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_awready(axi_dma_0_M_AXI_SG_AWREADY),
        .S05_AXI_awsize(axi_dma_0_M_AXI_SG_AWSIZE),
        .S05_AXI_awvalid(axi_dma_0_M_AXI_SG_AWVALID),
        .S05_AXI_bready(axi_dma_0_M_AXI_SG_BREADY),
        .S05_AXI_bresp(axi_dma_0_M_AXI_SG_BRESP),
        .S05_AXI_bvalid(axi_dma_0_M_AXI_SG_BVALID),
        .S05_AXI_rdata(axi_dma_0_M_AXI_SG_RDATA),
        .S05_AXI_rlast(axi_dma_0_M_AXI_SG_RLAST),
        .S05_AXI_rready(axi_dma_0_M_AXI_SG_RREADY),
        .S05_AXI_rresp(axi_dma_0_M_AXI_SG_RRESP),
        .S05_AXI_rvalid(axi_dma_0_M_AXI_SG_RVALID),
        .S05_AXI_wdata(axi_dma_0_M_AXI_SG_WDATA),
        .S05_AXI_wlast(axi_dma_0_M_AXI_SG_WLAST),
        .S05_AXI_wready(axi_dma_0_M_AXI_SG_WREADY),
        .S05_AXI_wstrb(axi_dma_0_M_AXI_SG_WSTRB),
        .S05_AXI_wvalid(axi_dma_0_M_AXI_SG_WVALID),
        .aclk(microblaze_riscv_0_Clk),
        .aresetn(rst_clk_wiz_1_100M_peripheral_aresetn));
  microblaze_riscv_0_local_memory_imp_1EZ76BX microblaze_riscv_0_local_memory
       (.DLMB_abus(microblaze_riscv_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_riscv_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_riscv_0_dlmb_1_BE),
        .DLMB_ce(microblaze_riscv_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_riscv_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_riscv_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_riscv_0_dlmb_1_READY),
        .DLMB_ue(microblaze_riscv_0_dlmb_1_UE),
        .DLMB_wait(microblaze_riscv_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_riscv_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_riscv_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_riscv_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_riscv_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_riscv_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_riscv_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_riscv_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_riscv_0_ilmb_1_READY),
        .ILMB_ue(microblaze_riscv_0_ilmb_1_UE),
        .ILMB_wait(microblaze_riscv_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_riscv_0_Clk),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset));
  assign microblaze_riscv_0_intr = {1'b0, axi_iic_0_iic2intc_irpt, axi_dma_0_s2mm_introut, axi_dma_0_mm2s_introut};
  block_design_mig_7series_0_0 mig_7series_0
       (.aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .clk_ref_i(mig_7series_0_ui_addn_clk_0),
        .ddr3_addr(ddr3_sdram_addr),
        .ddr3_ba(ddr3_sdram_ba),
        .ddr3_cas_n(ddr3_sdram_cas_n),
        .ddr3_ck_n(ddr3_sdram_ck_n),
        .ddr3_ck_p(ddr3_sdram_ck_p),
        .ddr3_cke(ddr3_sdram_cke),
        .ddr3_dm(ddr3_sdram_dm),
        .ddr3_dq(ddr3_sdram_dq),
        .ddr3_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_odt(ddr3_sdram_odt),
        .ddr3_ras_n(ddr3_sdram_ras_n),
        .ddr3_reset_n(ddr3_sdram_reset_n),
        .ddr3_we_n(ddr3_sdram_we_n),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M04_AXI_ARADDR),
        .s_axi_arburst(microblaze_riscv_0_axi_periph_M04_AXI_ARBURST),
        .s_axi_arcache(microblaze_riscv_0_axi_periph_M04_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen(microblaze_riscv_0_axi_periph_M04_AXI_ARLEN),
        .s_axi_arlock(microblaze_riscv_0_axi_periph_M04_AXI_ARLOCK),
        .s_axi_arprot(microblaze_riscv_0_axi_periph_M04_AXI_ARPROT),
        .s_axi_arqos(microblaze_riscv_0_axi_periph_M04_AXI_ARQOS),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arsize(microblaze_riscv_0_axi_periph_M04_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M04_AXI_AWADDR),
        .s_axi_awburst(microblaze_riscv_0_axi_periph_M04_AXI_AWBURST),
        .s_axi_awcache(microblaze_riscv_0_axi_periph_M04_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen(microblaze_riscv_0_axi_periph_M04_AXI_AWLEN),
        .s_axi_awlock(microblaze_riscv_0_axi_periph_M04_AXI_AWLOCK),
        .s_axi_awprot(microblaze_riscv_0_axi_periph_M04_AXI_AWPROT),
        .s_axi_awqos(microblaze_riscv_0_axi_periph_M04_AXI_AWQOS),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awsize(microblaze_riscv_0_axi_periph_M04_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rlast(microblaze_riscv_0_axi_periph_M04_AXI_RLAST),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wlast(microblaze_riscv_0_axi_periph_M04_AXI_WLAST),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M04_AXI_WVALID),
        .sys_clk_i(sys_clk_i),
        .sys_rst(reset),
        .ui_addn_clk_0(mig_7series_0_ui_addn_clk_0),
        .ui_clk(microblaze_riscv_0_Clk));
  block_design_rst_clk_wiz_1_100M_0 rst_clk_wiz_1_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .dcm_locked(1'b1),
        .ext_reset_in(reset),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_riscv_0_Clk));
endmodule

module microblaze_riscv_0_local_memory_imp_1EZ76BX
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire [0:31]DLMB_abus;
  wire DLMB_addrstrobe;
  wire [0:3]DLMB_be;
  wire DLMB_ce;
  wire [0:31]DLMB_readdbus;
  wire DLMB_readstrobe;
  wire DLMB_ready;
  wire DLMB_ue;
  wire DLMB_wait;
  wire [0:31]DLMB_writedbus;
  wire DLMB_writestrobe;
  wire [0:31]ILMB_abus;
  wire ILMB_addrstrobe;
  wire ILMB_ce;
  wire [0:31]ILMB_readdbus;
  wire ILMB_readstrobe;
  wire ILMB_ready;
  wire ILMB_ue;
  wire ILMB_wait;
  wire LMB_Clk;
  wire SYS_Rst;
  wire [0:31]microblaze_riscv_0_dlmb_bus_ABUS;
  wire microblaze_riscv_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_dlmb_bus_BE;
  wire microblaze_riscv_0_dlmb_bus_CE;
  wire [0:31]microblaze_riscv_0_dlmb_bus_READDBUS;
  wire microblaze_riscv_0_dlmb_bus_READSTROBE;
  wire microblaze_riscv_0_dlmb_bus_READY;
  wire microblaze_riscv_0_dlmb_bus_UE;
  wire microblaze_riscv_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_riscv_0_dlmb_bus_WRITEDBUS;
  wire microblaze_riscv_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_riscv_0_dlmb_cntlr_ADDR;
  wire microblaze_riscv_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_riscv_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_riscv_0_dlmb_cntlr_DOUT;
  wire microblaze_riscv_0_dlmb_cntlr_EN;
  wire microblaze_riscv_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_riscv_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_riscv_0_ilmb_bus_ABUS;
  wire microblaze_riscv_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_ilmb_bus_BE;
  wire microblaze_riscv_0_ilmb_bus_CE;
  wire [0:31]microblaze_riscv_0_ilmb_bus_READDBUS;
  wire microblaze_riscv_0_ilmb_bus_READSTROBE;
  wire microblaze_riscv_0_ilmb_bus_READY;
  wire microblaze_riscv_0_ilmb_bus_UE;
  wire microblaze_riscv_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_riscv_0_ilmb_bus_WRITEDBUS;
  wire microblaze_riscv_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_riscv_0_ilmb_cntlr_ADDR;
  wire microblaze_riscv_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_riscv_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_riscv_0_ilmb_cntlr_DOUT;
  wire microblaze_riscv_0_ilmb_cntlr_EN;
  wire microblaze_riscv_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_riscv_0_ilmb_cntlr_WE;

  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > block_design microblaze_riscv_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  block_design_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_riscv_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_riscv_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_riscv_0_dlmb_cntlr_DOUT[31],microblaze_riscv_0_dlmb_cntlr_DOUT[30],microblaze_riscv_0_dlmb_cntlr_DOUT[29],microblaze_riscv_0_dlmb_cntlr_DOUT[28],microblaze_riscv_0_dlmb_cntlr_DOUT[27],microblaze_riscv_0_dlmb_cntlr_DOUT[26],microblaze_riscv_0_dlmb_cntlr_DOUT[25],microblaze_riscv_0_dlmb_cntlr_DOUT[24],microblaze_riscv_0_dlmb_cntlr_DOUT[23],microblaze_riscv_0_dlmb_cntlr_DOUT[22],microblaze_riscv_0_dlmb_cntlr_DOUT[21],microblaze_riscv_0_dlmb_cntlr_DOUT[20],microblaze_riscv_0_dlmb_cntlr_DOUT[19],microblaze_riscv_0_dlmb_cntlr_DOUT[18],microblaze_riscv_0_dlmb_cntlr_DOUT[17],microblaze_riscv_0_dlmb_cntlr_DOUT[16],microblaze_riscv_0_dlmb_cntlr_DOUT[15],microblaze_riscv_0_dlmb_cntlr_DOUT[14],microblaze_riscv_0_dlmb_cntlr_DOUT[13],microblaze_riscv_0_dlmb_cntlr_DOUT[12],microblaze_riscv_0_dlmb_cntlr_DOUT[11],microblaze_riscv_0_dlmb_cntlr_DOUT[10],microblaze_riscv_0_dlmb_cntlr_DOUT[9],microblaze_riscv_0_dlmb_cntlr_DOUT[8],microblaze_riscv_0_dlmb_cntlr_DOUT[7],microblaze_riscv_0_dlmb_cntlr_DOUT[6],microblaze_riscv_0_dlmb_cntlr_DOUT[5],microblaze_riscv_0_dlmb_cntlr_DOUT[4],microblaze_riscv_0_dlmb_cntlr_DOUT[3],microblaze_riscv_0_dlmb_cntlr_DOUT[2],microblaze_riscv_0_dlmb_cntlr_DOUT[1],microblaze_riscv_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_riscv_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_riscv_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_riscv_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_riscv_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_riscv_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_dlmb_bus_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(microblaze_riscv_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst),
        .LMB_WriteDBus(microblaze_riscv_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_riscv_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_dlmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_dlmb_bus_WAIT));
  block_design_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_riscv_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_dlmb_bus_BE),
        .LMB_CE(DLMB_ce),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(DLMB_readdbus),
        .LMB_ReadStrobe(microblaze_riscv_0_dlmb_bus_READSTROBE),
        .LMB_Ready(DLMB_ready),
        .LMB_UE(DLMB_ue),
        .LMB_Wait(DLMB_wait),
        .LMB_WriteDBus(microblaze_riscv_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_dlmb_bus_WRITESTROBE),
        .M_ABus(DLMB_abus),
        .M_AddrStrobe(DLMB_addrstrobe),
        .M_BE(DLMB_be),
        .M_DBus(DLMB_writedbus),
        .M_ReadStrobe(DLMB_readstrobe),
        .M_WriteStrobe(DLMB_writestrobe),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(microblaze_riscv_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_dlmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_dlmb_bus_WAIT));
  block_design_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_riscv_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_riscv_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_riscv_0_ilmb_cntlr_DOUT[31],microblaze_riscv_0_ilmb_cntlr_DOUT[30],microblaze_riscv_0_ilmb_cntlr_DOUT[29],microblaze_riscv_0_ilmb_cntlr_DOUT[28],microblaze_riscv_0_ilmb_cntlr_DOUT[27],microblaze_riscv_0_ilmb_cntlr_DOUT[26],microblaze_riscv_0_ilmb_cntlr_DOUT[25],microblaze_riscv_0_ilmb_cntlr_DOUT[24],microblaze_riscv_0_ilmb_cntlr_DOUT[23],microblaze_riscv_0_ilmb_cntlr_DOUT[22],microblaze_riscv_0_ilmb_cntlr_DOUT[21],microblaze_riscv_0_ilmb_cntlr_DOUT[20],microblaze_riscv_0_ilmb_cntlr_DOUT[19],microblaze_riscv_0_ilmb_cntlr_DOUT[18],microblaze_riscv_0_ilmb_cntlr_DOUT[17],microblaze_riscv_0_ilmb_cntlr_DOUT[16],microblaze_riscv_0_ilmb_cntlr_DOUT[15],microblaze_riscv_0_ilmb_cntlr_DOUT[14],microblaze_riscv_0_ilmb_cntlr_DOUT[13],microblaze_riscv_0_ilmb_cntlr_DOUT[12],microblaze_riscv_0_ilmb_cntlr_DOUT[11],microblaze_riscv_0_ilmb_cntlr_DOUT[10],microblaze_riscv_0_ilmb_cntlr_DOUT[9],microblaze_riscv_0_ilmb_cntlr_DOUT[8],microblaze_riscv_0_ilmb_cntlr_DOUT[7],microblaze_riscv_0_ilmb_cntlr_DOUT[6],microblaze_riscv_0_ilmb_cntlr_DOUT[5],microblaze_riscv_0_ilmb_cntlr_DOUT[4],microblaze_riscv_0_ilmb_cntlr_DOUT[3],microblaze_riscv_0_ilmb_cntlr_DOUT[2],microblaze_riscv_0_ilmb_cntlr_DOUT[1],microblaze_riscv_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_riscv_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_riscv_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_riscv_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_riscv_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_riscv_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_ilmb_bus_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(microblaze_riscv_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst),
        .LMB_WriteDBus(microblaze_riscv_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_riscv_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_ilmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_ilmb_bus_WAIT));
  block_design_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_riscv_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_ilmb_bus_BE),
        .LMB_CE(ILMB_ce),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(ILMB_readdbus),
        .LMB_ReadStrobe(microblaze_riscv_0_ilmb_bus_READSTROBE),
        .LMB_Ready(ILMB_ready),
        .LMB_UE(ILMB_ue),
        .LMB_Wait(ILMB_wait),
        .LMB_WriteDBus(microblaze_riscv_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_ilmb_bus_WRITESTROBE),
        .M_ABus(ILMB_abus),
        .M_AddrStrobe(ILMB_addrstrobe),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(ILMB_readstrobe),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(microblaze_riscv_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_ilmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_ilmb_bus_WAIT));
  block_design_lmb_bram_0 lmb_bram
       (.addra({microblaze_riscv_0_dlmb_cntlr_ADDR[0],microblaze_riscv_0_dlmb_cntlr_ADDR[1],microblaze_riscv_0_dlmb_cntlr_ADDR[2],microblaze_riscv_0_dlmb_cntlr_ADDR[3],microblaze_riscv_0_dlmb_cntlr_ADDR[4],microblaze_riscv_0_dlmb_cntlr_ADDR[5],microblaze_riscv_0_dlmb_cntlr_ADDR[6],microblaze_riscv_0_dlmb_cntlr_ADDR[7],microblaze_riscv_0_dlmb_cntlr_ADDR[8],microblaze_riscv_0_dlmb_cntlr_ADDR[9],microblaze_riscv_0_dlmb_cntlr_ADDR[10],microblaze_riscv_0_dlmb_cntlr_ADDR[11],microblaze_riscv_0_dlmb_cntlr_ADDR[12],microblaze_riscv_0_dlmb_cntlr_ADDR[13],microblaze_riscv_0_dlmb_cntlr_ADDR[14],microblaze_riscv_0_dlmb_cntlr_ADDR[15],microblaze_riscv_0_dlmb_cntlr_ADDR[16],microblaze_riscv_0_dlmb_cntlr_ADDR[17],microblaze_riscv_0_dlmb_cntlr_ADDR[18],microblaze_riscv_0_dlmb_cntlr_ADDR[19],microblaze_riscv_0_dlmb_cntlr_ADDR[20],microblaze_riscv_0_dlmb_cntlr_ADDR[21],microblaze_riscv_0_dlmb_cntlr_ADDR[22],microblaze_riscv_0_dlmb_cntlr_ADDR[23],microblaze_riscv_0_dlmb_cntlr_ADDR[24],microblaze_riscv_0_dlmb_cntlr_ADDR[25],microblaze_riscv_0_dlmb_cntlr_ADDR[26],microblaze_riscv_0_dlmb_cntlr_ADDR[27],microblaze_riscv_0_dlmb_cntlr_ADDR[28],microblaze_riscv_0_dlmb_cntlr_ADDR[29],microblaze_riscv_0_dlmb_cntlr_ADDR[30],microblaze_riscv_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_riscv_0_ilmb_cntlr_ADDR[0],microblaze_riscv_0_ilmb_cntlr_ADDR[1],microblaze_riscv_0_ilmb_cntlr_ADDR[2],microblaze_riscv_0_ilmb_cntlr_ADDR[3],microblaze_riscv_0_ilmb_cntlr_ADDR[4],microblaze_riscv_0_ilmb_cntlr_ADDR[5],microblaze_riscv_0_ilmb_cntlr_ADDR[6],microblaze_riscv_0_ilmb_cntlr_ADDR[7],microblaze_riscv_0_ilmb_cntlr_ADDR[8],microblaze_riscv_0_ilmb_cntlr_ADDR[9],microblaze_riscv_0_ilmb_cntlr_ADDR[10],microblaze_riscv_0_ilmb_cntlr_ADDR[11],microblaze_riscv_0_ilmb_cntlr_ADDR[12],microblaze_riscv_0_ilmb_cntlr_ADDR[13],microblaze_riscv_0_ilmb_cntlr_ADDR[14],microblaze_riscv_0_ilmb_cntlr_ADDR[15],microblaze_riscv_0_ilmb_cntlr_ADDR[16],microblaze_riscv_0_ilmb_cntlr_ADDR[17],microblaze_riscv_0_ilmb_cntlr_ADDR[18],microblaze_riscv_0_ilmb_cntlr_ADDR[19],microblaze_riscv_0_ilmb_cntlr_ADDR[20],microblaze_riscv_0_ilmb_cntlr_ADDR[21],microblaze_riscv_0_ilmb_cntlr_ADDR[22],microblaze_riscv_0_ilmb_cntlr_ADDR[23],microblaze_riscv_0_ilmb_cntlr_ADDR[24],microblaze_riscv_0_ilmb_cntlr_ADDR[25],microblaze_riscv_0_ilmb_cntlr_ADDR[26],microblaze_riscv_0_ilmb_cntlr_ADDR[27],microblaze_riscv_0_ilmb_cntlr_ADDR[28],microblaze_riscv_0_ilmb_cntlr_ADDR[29],microblaze_riscv_0_ilmb_cntlr_ADDR[30],microblaze_riscv_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_riscv_0_dlmb_cntlr_CLK),
        .clkb(microblaze_riscv_0_ilmb_cntlr_CLK),
        .dina({microblaze_riscv_0_dlmb_cntlr_DIN[0],microblaze_riscv_0_dlmb_cntlr_DIN[1],microblaze_riscv_0_dlmb_cntlr_DIN[2],microblaze_riscv_0_dlmb_cntlr_DIN[3],microblaze_riscv_0_dlmb_cntlr_DIN[4],microblaze_riscv_0_dlmb_cntlr_DIN[5],microblaze_riscv_0_dlmb_cntlr_DIN[6],microblaze_riscv_0_dlmb_cntlr_DIN[7],microblaze_riscv_0_dlmb_cntlr_DIN[8],microblaze_riscv_0_dlmb_cntlr_DIN[9],microblaze_riscv_0_dlmb_cntlr_DIN[10],microblaze_riscv_0_dlmb_cntlr_DIN[11],microblaze_riscv_0_dlmb_cntlr_DIN[12],microblaze_riscv_0_dlmb_cntlr_DIN[13],microblaze_riscv_0_dlmb_cntlr_DIN[14],microblaze_riscv_0_dlmb_cntlr_DIN[15],microblaze_riscv_0_dlmb_cntlr_DIN[16],microblaze_riscv_0_dlmb_cntlr_DIN[17],microblaze_riscv_0_dlmb_cntlr_DIN[18],microblaze_riscv_0_dlmb_cntlr_DIN[19],microblaze_riscv_0_dlmb_cntlr_DIN[20],microblaze_riscv_0_dlmb_cntlr_DIN[21],microblaze_riscv_0_dlmb_cntlr_DIN[22],microblaze_riscv_0_dlmb_cntlr_DIN[23],microblaze_riscv_0_dlmb_cntlr_DIN[24],microblaze_riscv_0_dlmb_cntlr_DIN[25],microblaze_riscv_0_dlmb_cntlr_DIN[26],microblaze_riscv_0_dlmb_cntlr_DIN[27],microblaze_riscv_0_dlmb_cntlr_DIN[28],microblaze_riscv_0_dlmb_cntlr_DIN[29],microblaze_riscv_0_dlmb_cntlr_DIN[30],microblaze_riscv_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_riscv_0_ilmb_cntlr_DIN[0],microblaze_riscv_0_ilmb_cntlr_DIN[1],microblaze_riscv_0_ilmb_cntlr_DIN[2],microblaze_riscv_0_ilmb_cntlr_DIN[3],microblaze_riscv_0_ilmb_cntlr_DIN[4],microblaze_riscv_0_ilmb_cntlr_DIN[5],microblaze_riscv_0_ilmb_cntlr_DIN[6],microblaze_riscv_0_ilmb_cntlr_DIN[7],microblaze_riscv_0_ilmb_cntlr_DIN[8],microblaze_riscv_0_ilmb_cntlr_DIN[9],microblaze_riscv_0_ilmb_cntlr_DIN[10],microblaze_riscv_0_ilmb_cntlr_DIN[11],microblaze_riscv_0_ilmb_cntlr_DIN[12],microblaze_riscv_0_ilmb_cntlr_DIN[13],microblaze_riscv_0_ilmb_cntlr_DIN[14],microblaze_riscv_0_ilmb_cntlr_DIN[15],microblaze_riscv_0_ilmb_cntlr_DIN[16],microblaze_riscv_0_ilmb_cntlr_DIN[17],microblaze_riscv_0_ilmb_cntlr_DIN[18],microblaze_riscv_0_ilmb_cntlr_DIN[19],microblaze_riscv_0_ilmb_cntlr_DIN[20],microblaze_riscv_0_ilmb_cntlr_DIN[21],microblaze_riscv_0_ilmb_cntlr_DIN[22],microblaze_riscv_0_ilmb_cntlr_DIN[23],microblaze_riscv_0_ilmb_cntlr_DIN[24],microblaze_riscv_0_ilmb_cntlr_DIN[25],microblaze_riscv_0_ilmb_cntlr_DIN[26],microblaze_riscv_0_ilmb_cntlr_DIN[27],microblaze_riscv_0_ilmb_cntlr_DIN[28],microblaze_riscv_0_ilmb_cntlr_DIN[29],microblaze_riscv_0_ilmb_cntlr_DIN[30],microblaze_riscv_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_riscv_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_riscv_0_ilmb_cntlr_DOUT),
        .ena(microblaze_riscv_0_dlmb_cntlr_EN),
        .enb(microblaze_riscv_0_ilmb_cntlr_EN),
        .rsta(microblaze_riscv_0_dlmb_cntlr_RST),
        .rstb(microblaze_riscv_0_ilmb_cntlr_RST),
        .wea({microblaze_riscv_0_dlmb_cntlr_WE[0],microblaze_riscv_0_dlmb_cntlr_WE[1],microblaze_riscv_0_dlmb_cntlr_WE[2],microblaze_riscv_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_riscv_0_ilmb_cntlr_WE[0],microblaze_riscv_0_ilmb_cntlr_WE[1],microblaze_riscv_0_ilmb_cntlr_WE[2],microblaze_riscv_0_ilmb_cntlr_WE[3]}));
endmodule
