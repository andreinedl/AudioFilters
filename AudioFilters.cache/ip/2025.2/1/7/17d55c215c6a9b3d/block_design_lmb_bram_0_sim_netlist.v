// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat May 16 21:21:06 2026
// Host        : SPACESHIP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ block_design_lmb_bram_0_sim_netlist.v
// Design      : block_design_lmb_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "block_design_lmb_bram_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "block_design_lmb_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61312)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
