//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Mon May 18 08:58:09 2026
//Host        : SPACESHIP running 64-bit major release  (build 9200)
//Command     : generate_target block_design_wrapper.bd
//Design      : block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module block_design_wrapper
   (BCLK_O,
    LRCLK_O,
    MCLK_O,
    SDATA_I,
    SDATA_O,
    btn,
    cpu_resetn,
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
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    init_calib_complete_0,
    oled_pin10_io,
    oled_pin2_io,
    oled_pin4_io,
    oled_pin7_io,
    oled_pin8_io,
    oled_pin9_io,
    sw,
    sys_clk_i,
    usb_uart_rxd,
    usb_uart_txd);
  output [0:0]BCLK_O;
  output [0:0]LRCLK_O;
  output MCLK_O;
  input [0:0]SDATA_I;
  output [0:0]SDATA_O;
  input [1:0]btn;
  input cpu_resetn;
  output [14:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [1:0]ddr3_sdram_dm;
  inout [15:0]ddr3_sdram_dq;
  inout [1:0]ddr3_sdram_dqs_n;
  inout [1:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  output init_calib_complete_0;
  inout oled_pin10_io;
  inout oled_pin2_io;
  inout oled_pin4_io;
  inout oled_pin7_io;
  inout oled_pin8_io;
  inout oled_pin9_io;
  input [7:0]sw;
  input sys_clk_i;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]BCLK_O;
  wire [0:0]LRCLK_O;
  wire MCLK_O;
  wire [0:0]SDATA_I;
  wire [0:0]SDATA_O;
  wire [1:0]btn;
  wire cpu_resetn;
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
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire init_calib_complete_0;
  wire oled_pin10_i;
  wire oled_pin10_io;
  wire oled_pin10_o;
  wire oled_pin10_t;
  wire oled_pin2_i;
  wire oled_pin2_io;
  wire oled_pin2_o;
  wire oled_pin2_t;
  wire oled_pin4_i;
  wire oled_pin4_io;
  wire oled_pin4_o;
  wire oled_pin4_t;
  wire oled_pin7_i;
  wire oled_pin7_io;
  wire oled_pin7_o;
  wire oled_pin7_t;
  wire oled_pin8_i;
  wire oled_pin8_io;
  wire oled_pin8_o;
  wire oled_pin8_t;
  wire oled_pin9_i;
  wire oled_pin9_io;
  wire oled_pin9_o;
  wire oled_pin9_t;
  wire [7:0]sw;
  wire sys_clk_i;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  block_design block_design_i
       (.BCLK_O(BCLK_O),
        .LRCLK_O(LRCLK_O),
        .MCLK_O(MCLK_O),
        .SDATA_I(SDATA_I),
        .SDATA_O(SDATA_O),
        .btn(btn),
        .cpu_resetn(cpu_resetn),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .init_calib_complete_0(init_calib_complete_0),
        .oled_pin10_i(oled_pin10_i),
        .oled_pin10_o(oled_pin10_o),
        .oled_pin10_t(oled_pin10_t),
        .oled_pin2_i(oled_pin2_i),
        .oled_pin2_o(oled_pin2_o),
        .oled_pin2_t(oled_pin2_t),
        .oled_pin4_i(oled_pin4_i),
        .oled_pin4_o(oled_pin4_o),
        .oled_pin4_t(oled_pin4_t),
        .oled_pin7_i(oled_pin7_i),
        .oled_pin7_o(oled_pin7_o),
        .oled_pin7_t(oled_pin7_t),
        .oled_pin8_i(oled_pin8_i),
        .oled_pin8_o(oled_pin8_o),
        .oled_pin8_t(oled_pin8_t),
        .oled_pin9_i(oled_pin9_i),
        .oled_pin9_o(oled_pin9_o),
        .oled_pin9_t(oled_pin9_t),
        .sw(sw),
        .sys_clk_i(sys_clk_i),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF iic_rtl_scl_iobuf
       (.I(iic_rtl_scl_o),
        .IO(iic_rtl_scl_io),
        .O(iic_rtl_scl_i),
        .T(iic_rtl_scl_t));
  IOBUF iic_rtl_sda_iobuf
       (.I(iic_rtl_sda_o),
        .IO(iic_rtl_sda_io),
        .O(iic_rtl_sda_i),
        .T(iic_rtl_sda_t));
  IOBUF oled_pin10_iobuf
       (.I(oled_pin10_o),
        .IO(oled_pin10_io),
        .O(oled_pin10_i),
        .T(oled_pin10_t));
  IOBUF oled_pin2_iobuf
       (.I(oled_pin2_o),
        .IO(oled_pin2_io),
        .O(oled_pin2_i),
        .T(oled_pin2_t));
  IOBUF oled_pin4_iobuf
       (.I(oled_pin4_o),
        .IO(oled_pin4_io),
        .O(oled_pin4_i),
        .T(oled_pin4_t));
  IOBUF oled_pin7_iobuf
       (.I(oled_pin7_o),
        .IO(oled_pin7_io),
        .O(oled_pin7_i),
        .T(oled_pin7_t));
  IOBUF oled_pin8_iobuf
       (.I(oled_pin8_o),
        .IO(oled_pin8_io),
        .O(oled_pin8_i),
        .T(oled_pin8_t));
  IOBUF oled_pin9_iobuf
       (.I(oled_pin9_o),
        .IO(oled_pin9_io),
        .O(oled_pin9_i),
        .T(oled_pin9_t));
endmodule
