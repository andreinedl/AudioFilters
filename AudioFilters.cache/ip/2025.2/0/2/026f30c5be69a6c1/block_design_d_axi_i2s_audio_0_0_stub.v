// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May  2 01:57:26 2026
// Host        : SPACESHIP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ block_design_d_axi_i2s_audio_0_0_stub.v
// Design      : block_design_d_axi_i2s_audio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "block_design_d_axi_i2s_audio_0_0,d_axi_i2s_audio_v2_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "d_axi_i2s_audio_v2_0,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(BCLK_O, LRCLK_O, MCLK_O, SDATA_I, SDATA_O, 
  CLK_100MHZ_I, S_AXIS_MM2S_ACLK, S_AXIS_MM2S_ARESETN, S_AXIS_MM2S_TREADY, 
  S_AXIS_MM2S_TDATA, S_AXIS_MM2S_TKEEP, S_AXIS_MM2S_TLAST, S_AXIS_MM2S_TVALID, 
  M_AXIS_S2MM_ACLK, M_AXIS_S2MM_ARESETN, M_AXIS_S2MM_TVALID, M_AXIS_S2MM_TDATA, 
  M_AXIS_S2MM_TKEEP, M_AXIS_S2MM_TLAST, M_AXIS_S2MM_TREADY, AXI_L_aclk, AXI_L_aresetn, 
  AXI_L_awaddr, AXI_L_awprot, AXI_L_awvalid, AXI_L_awready, AXI_L_wdata, AXI_L_wstrb, 
  AXI_L_wvalid, AXI_L_wready, AXI_L_bresp, AXI_L_bvalid, AXI_L_bready, AXI_L_araddr, 
  AXI_L_arprot, AXI_L_arvalid, AXI_L_arready, AXI_L_rdata, AXI_L_rresp, AXI_L_rvalid, 
  AXI_L_rready)
/* synthesis syn_black_box black_box_pad_pin="BCLK_O,LRCLK_O,MCLK_O,SDATA_I,SDATA_O,S_AXIS_MM2S_ARESETN,S_AXIS_MM2S_TREADY,S_AXIS_MM2S_TDATA[31:0],S_AXIS_MM2S_TKEEP[3:0],S_AXIS_MM2S_TLAST,S_AXIS_MM2S_TVALID,M_AXIS_S2MM_ARESETN,M_AXIS_S2MM_TVALID,M_AXIS_S2MM_TDATA[31:0],M_AXIS_S2MM_TKEEP[3:0],M_AXIS_S2MM_TLAST,M_AXIS_S2MM_TREADY,AXI_L_aresetn,AXI_L_awaddr[5:0],AXI_L_awprot[2:0],AXI_L_awvalid,AXI_L_awready,AXI_L_wdata[31:0],AXI_L_wstrb[3:0],AXI_L_wvalid,AXI_L_wready,AXI_L_bresp[1:0],AXI_L_bvalid,AXI_L_bready,AXI_L_araddr[5:0],AXI_L_arprot[2:0],AXI_L_arvalid,AXI_L_arready,AXI_L_rdata[31:0],AXI_L_rresp[1:0],AXI_L_rvalid,AXI_L_rready" */
/* synthesis syn_force_seq_prim="CLK_100MHZ_I" */
/* synthesis syn_force_seq_prim="S_AXIS_MM2S_ACLK" */
/* synthesis syn_force_seq_prim="M_AXIS_S2MM_ACLK" */
/* synthesis syn_force_seq_prim="AXI_L_aclk" */;
  output BCLK_O;
  output LRCLK_O;
  output MCLK_O;
  input SDATA_I;
  output SDATA_O;
  input CLK_100MHZ_I /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_MM2S_CLK CLK" *) (* x_interface_mode = "slave AXI_MM2S_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_MM2S_CLK, ASSOCIATED_BUSIF AXI_MM2S, ASSOCIATED_RESET S_AXIS_MM2S_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input S_AXIS_MM2S_ACLK /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_MM2S_RST RST" *) (* x_interface_mode = "slave AXI_MM2S_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_MM2S_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXIS_MM2S_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_MM2S TREADY" *) (* x_interface_mode = "slave AXI_MM2S" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_MM2S, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output S_AXIS_MM2S_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_MM2S TDATA" *) input [31:0]S_AXIS_MM2S_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_MM2S TKEEP" *) input [3:0]S_AXIS_MM2S_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_MM2S TLAST" *) input S_AXIS_MM2S_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_MM2S TVALID" *) input S_AXIS_MM2S_TVALID;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_S2MM_CLK CLK" *) (* x_interface_mode = "slave AXI_S2MM_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_S2MM_CLK, ASSOCIATED_BUSIF AXI_S2MM, ASSOCIATED_RESET M_AXIS_S2MM_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input M_AXIS_S2MM_ACLK /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_S2MM_RST RST" *) (* x_interface_mode = "slave AXI_S2MM_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_S2MM_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXIS_S2MM_ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_S2MM TVALID" *) (* x_interface_mode = "master AXI_S2MM" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_S2MM, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output M_AXIS_S2MM_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_S2MM TDATA" *) output [31:0]M_AXIS_S2MM_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_S2MM TKEEP" *) output [3:0]M_AXIS_S2MM_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_S2MM TLAST" *) output M_AXIS_S2MM_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_S2MM TREADY" *) input M_AXIS_S2MM_TREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_L_CLK CLK" *) (* x_interface_mode = "slave AXI_L_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_L_CLK, ASSOCIATED_BUSIF AXI_L, ASSOCIATED_RESET axi_l_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input AXI_L_aclk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_L_RST RST" *) (* x_interface_mode = "slave AXI_L_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_L_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input AXI_L_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L AWADDR" *) (* x_interface_mode = "slave AXI_L" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_L, WIZ.DATA_WIDTH 32, WIZ.NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]AXI_L_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L AWPROT" *) input [2:0]AXI_L_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L AWVALID" *) input AXI_L_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L AWREADY" *) output AXI_L_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L WDATA" *) input [31:0]AXI_L_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L WSTRB" *) input [3:0]AXI_L_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L WVALID" *) input AXI_L_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L WREADY" *) output AXI_L_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L BRESP" *) output [1:0]AXI_L_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L BVALID" *) output AXI_L_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L BREADY" *) input AXI_L_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L ARADDR" *) input [5:0]AXI_L_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L ARPROT" *) input [2:0]AXI_L_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L ARVALID" *) input AXI_L_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L ARREADY" *) output AXI_L_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L RDATA" *) output [31:0]AXI_L_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L RRESP" *) output [1:0]AXI_L_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L RVALID" *) output AXI_L_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_L RREADY" *) input AXI_L_rready;
endmodule
