-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat May  2 01:57:27 2026
-- Host        : SPACESHIP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/AudioFilters/AudioFilters.gen/sources_1/bd/block_design/ip/block_design_d_axi_i2s_audio_0_0/block_design_d_axi_i2s_audio_0_0_stub.vhdl
-- Design      : block_design_d_axi_i2s_audio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_design_d_axi_i2s_audio_0_0 is
  Port ( 
    BCLK_O : out STD_LOGIC;
    LRCLK_O : out STD_LOGIC;
    MCLK_O : out STD_LOGIC;
    SDATA_I : in STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    CLK_100MHZ_I : in STD_LOGIC;
    S_AXIS_MM2S_ACLK : in STD_LOGIC;
    S_AXIS_MM2S_ARESETN : in STD_LOGIC;
    S_AXIS_MM2S_TREADY : out STD_LOGIC;
    S_AXIS_MM2S_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_MM2S_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_MM2S_TLAST : in STD_LOGIC;
    S_AXIS_MM2S_TVALID : in STD_LOGIC;
    M_AXIS_S2MM_ACLK : in STD_LOGIC;
    M_AXIS_S2MM_ARESETN : in STD_LOGIC;
    M_AXIS_S2MM_TVALID : out STD_LOGIC;
    M_AXIS_S2MM_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_S2MM_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_S2MM_TLAST : out STD_LOGIC;
    M_AXIS_S2MM_TREADY : in STD_LOGIC;
    AXI_L_aclk : in STD_LOGIC;
    AXI_L_aresetn : in STD_LOGIC;
    AXI_L_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_L_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_L_awvalid : in STD_LOGIC;
    AXI_L_awready : out STD_LOGIC;
    AXI_L_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_L_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_L_wvalid : in STD_LOGIC;
    AXI_L_wready : out STD_LOGIC;
    AXI_L_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_L_bvalid : out STD_LOGIC;
    AXI_L_bready : in STD_LOGIC;
    AXI_L_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    AXI_L_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_L_arvalid : in STD_LOGIC;
    AXI_L_arready : out STD_LOGIC;
    AXI_L_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_L_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_L_rvalid : out STD_LOGIC;
    AXI_L_rready : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of block_design_d_axi_i2s_audio_0_0 : entity is "block_design_d_axi_i2s_audio_0_0,d_axi_i2s_audio_v2_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of block_design_d_axi_i2s_audio_0_0 : entity is "yes";
end block_design_d_axi_i2s_audio_0_0;

architecture stub of block_design_d_axi_i2s_audio_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "BCLK_O,LRCLK_O,MCLK_O,SDATA_I,SDATA_O,CLK_100MHZ_I,S_AXIS_MM2S_ACLK,S_AXIS_MM2S_ARESETN,S_AXIS_MM2S_TREADY,S_AXIS_MM2S_TDATA[31:0],S_AXIS_MM2S_TKEEP[3:0],S_AXIS_MM2S_TLAST,S_AXIS_MM2S_TVALID,M_AXIS_S2MM_ACLK,M_AXIS_S2MM_ARESETN,M_AXIS_S2MM_TVALID,M_AXIS_S2MM_TDATA[31:0],M_AXIS_S2MM_TKEEP[3:0],M_AXIS_S2MM_TLAST,M_AXIS_S2MM_TREADY,AXI_L_aclk,AXI_L_aresetn,AXI_L_awaddr[5:0],AXI_L_awprot[2:0],AXI_L_awvalid,AXI_L_awready,AXI_L_wdata[31:0],AXI_L_wstrb[3:0],AXI_L_wvalid,AXI_L_wready,AXI_L_bresp[1:0],AXI_L_bvalid,AXI_L_bready,AXI_L_araddr[5:0],AXI_L_arprot[2:0],AXI_L_arvalid,AXI_L_arready,AXI_L_rdata[31:0],AXI_L_rresp[1:0],AXI_L_rvalid,AXI_L_rready";
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXIS_MM2S_ACLK : signal is "xilinx.com:signal:clock:1.0 AXI_MM2S_CLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of S_AXIS_MM2S_ACLK : signal is "slave AXI_MM2S_CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXIS_MM2S_ACLK : signal is "XIL_INTERFACENAME AXI_MM2S_CLK, ASSOCIATED_BUSIF AXI_MM2S, ASSOCIATED_RESET S_AXIS_MM2S_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of S_AXIS_MM2S_ARESETN : signal is "xilinx.com:signal:reset:1.0 AXI_MM2S_RST RST";
  attribute x_interface_mode of S_AXIS_MM2S_ARESETN : signal is "slave AXI_MM2S_RST";
  attribute x_interface_parameter of S_AXIS_MM2S_ARESETN : signal is "XIL_INTERFACENAME AXI_MM2S_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXIS_MM2S_TREADY : signal is "xilinx.com:interface:axis:1.0 AXI_MM2S TREADY";
  attribute x_interface_mode of S_AXIS_MM2S_TREADY : signal is "slave AXI_MM2S";
  attribute x_interface_parameter of S_AXIS_MM2S_TREADY : signal is "XIL_INTERFACENAME AXI_MM2S, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of S_AXIS_MM2S_TDATA : signal is "xilinx.com:interface:axis:1.0 AXI_MM2S TDATA";
  attribute x_interface_info of S_AXIS_MM2S_TKEEP : signal is "xilinx.com:interface:axis:1.0 AXI_MM2S TKEEP";
  attribute x_interface_info of S_AXIS_MM2S_TLAST : signal is "xilinx.com:interface:axis:1.0 AXI_MM2S TLAST";
  attribute x_interface_info of S_AXIS_MM2S_TVALID : signal is "xilinx.com:interface:axis:1.0 AXI_MM2S TVALID";
  attribute x_interface_info of M_AXIS_S2MM_ACLK : signal is "xilinx.com:signal:clock:1.0 AXI_S2MM_CLK CLK";
  attribute x_interface_mode of M_AXIS_S2MM_ACLK : signal is "slave AXI_S2MM_CLK";
  attribute x_interface_parameter of M_AXIS_S2MM_ACLK : signal is "XIL_INTERFACENAME AXI_S2MM_CLK, ASSOCIATED_BUSIF AXI_S2MM, ASSOCIATED_RESET M_AXIS_S2MM_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_S2MM_ARESETN : signal is "xilinx.com:signal:reset:1.0 AXI_S2MM_RST RST";
  attribute x_interface_mode of M_AXIS_S2MM_ARESETN : signal is "slave AXI_S2MM_RST";
  attribute x_interface_parameter of M_AXIS_S2MM_ARESETN : signal is "XIL_INTERFACENAME AXI_S2MM_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_S2MM_TVALID : signal is "xilinx.com:interface:axis:1.0 AXI_S2MM TVALID";
  attribute x_interface_mode of M_AXIS_S2MM_TVALID : signal is "master AXI_S2MM";
  attribute x_interface_parameter of M_AXIS_S2MM_TVALID : signal is "XIL_INTERFACENAME AXI_S2MM, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_S2MM_TDATA : signal is "xilinx.com:interface:axis:1.0 AXI_S2MM TDATA";
  attribute x_interface_info of M_AXIS_S2MM_TKEEP : signal is "xilinx.com:interface:axis:1.0 AXI_S2MM TKEEP";
  attribute x_interface_info of M_AXIS_S2MM_TLAST : signal is "xilinx.com:interface:axis:1.0 AXI_S2MM TLAST";
  attribute x_interface_info of M_AXIS_S2MM_TREADY : signal is "xilinx.com:interface:axis:1.0 AXI_S2MM TREADY";
  attribute x_interface_info of AXI_L_aclk : signal is "xilinx.com:signal:clock:1.0 AXI_L_CLK CLK";
  attribute x_interface_mode of AXI_L_aclk : signal is "slave AXI_L_CLK";
  attribute x_interface_parameter of AXI_L_aclk : signal is "XIL_INTERFACENAME AXI_L_CLK, ASSOCIATED_BUSIF AXI_L, ASSOCIATED_RESET axi_l_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of AXI_L_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_L_RST RST";
  attribute x_interface_mode of AXI_L_aresetn : signal is "slave AXI_L_RST";
  attribute x_interface_parameter of AXI_L_aresetn : signal is "XIL_INTERFACENAME AXI_L_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of AXI_L_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_L AWADDR";
  attribute x_interface_mode of AXI_L_awaddr : signal is "slave AXI_L";
  attribute x_interface_parameter of AXI_L_awaddr : signal is "XIL_INTERFACENAME AXI_L, WIZ.DATA_WIDTH 32, WIZ.NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN block_design_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of AXI_L_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_L AWPROT";
  attribute x_interface_info of AXI_L_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_L AWVALID";
  attribute x_interface_info of AXI_L_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_L AWREADY";
  attribute x_interface_info of AXI_L_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_L WDATA";
  attribute x_interface_info of AXI_L_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_L WSTRB";
  attribute x_interface_info of AXI_L_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_L WVALID";
  attribute x_interface_info of AXI_L_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_L WREADY";
  attribute x_interface_info of AXI_L_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_L BRESP";
  attribute x_interface_info of AXI_L_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_L BVALID";
  attribute x_interface_info of AXI_L_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_L BREADY";
  attribute x_interface_info of AXI_L_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_L ARADDR";
  attribute x_interface_info of AXI_L_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_L ARPROT";
  attribute x_interface_info of AXI_L_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_L ARVALID";
  attribute x_interface_info of AXI_L_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_L ARREADY";
  attribute x_interface_info of AXI_L_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_L RDATA";
  attribute x_interface_info of AXI_L_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_L RRESP";
  attribute x_interface_info of AXI_L_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_L RVALID";
  attribute x_interface_info of AXI_L_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_L RREADY";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "d_axi_i2s_audio_v2_0,Vivado 2025.2";
begin
end;
