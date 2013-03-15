// megafunction wizard: %Virtual JTAG%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: sld_virtual_jtag 

// ============================================================
// File Name: vJTAG.v
// Megafunction Name(s):
// 			sld_virtual_jtag
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 12.0 Build 232 07/05/2012 SP 1 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2012 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module vJTAG (
	ir_out,
	tdo,
	ir_in,
	tck,
	tdi,
	virtual_state_cdr,
	virtual_state_cir,
	virtual_state_e1dr,
	virtual_state_e2dr,
	virtual_state_pdr,
	virtual_state_sdr,
	virtual_state_udr,
	virtual_state_uir);

	input	[1:0]  ir_out;
	input	  tdo;
	output	[1:0]  ir_in;
	output	  tck;
	output	  tdi;
	output	  virtual_state_cdr;
	output	  virtual_state_cir;
	output	  virtual_state_e1dr;
	output	  virtual_state_e2dr;
	output	  virtual_state_pdr;
	output	  virtual_state_sdr;
	output	  virtual_state_udr;
	output	  virtual_state_uir;

	wire  sub_wire0;
	wire  sub_wire1;
	wire [1:0] sub_wire2;
	wire  sub_wire3;
	wire  sub_wire4;
	wire  sub_wire5;
	wire  sub_wire6;
	wire  sub_wire7;
	wire  sub_wire8;
	wire  sub_wire9;
	wire  sub_wire10;
	wire  virtual_state_cir = sub_wire0;
	wire  virtual_state_pdr = sub_wire1;
	wire [1:0] ir_in = sub_wire2[1:0];
	wire  tdi = sub_wire3;
	wire  virtual_state_udr = sub_wire4;
	wire  tck = sub_wire5;
	wire  virtual_state_e1dr = sub_wire6;
	wire  virtual_state_uir = sub_wire7;
	wire  virtual_state_cdr = sub_wire8;
	wire  virtual_state_e2dr = sub_wire9;
	wire  virtual_state_sdr = sub_wire10;

	sld_virtual_jtag	sld_virtual_jtag_component (
				.ir_out (ir_out),
				.tdo (tdo),
				.virtual_state_cir (sub_wire0),
				.virtual_state_pdr (sub_wire1),
				.ir_in (sub_wire2),
				.tdi (sub_wire3),
				.virtual_state_udr (sub_wire4),
				.tck (sub_wire5),
				.virtual_state_e1dr (sub_wire6),
				.virtual_state_uir (sub_wire7),
				.virtual_state_cdr (sub_wire8),
				.virtual_state_e2dr (sub_wire9),
				.virtual_state_sdr (sub_wire10)
				// synopsys translate_off
				,
				.jtag_state_cdr (),
				.jtag_state_cir (),
				.jtag_state_e1dr (),
				.jtag_state_e1ir (),
				.jtag_state_e2dr (),
				.jtag_state_e2ir (),
				.jtag_state_pdr (),
				.jtag_state_pir (),
				.jtag_state_rti (),
				.jtag_state_sdr (),
				.jtag_state_sdrs (),
				.jtag_state_sir (),
				.jtag_state_sirs (),
				.jtag_state_tlr (),
				.jtag_state_udr (),
				.jtag_state_uir (),
				.tms ()
				// synopsys translate_on
				);
	defparam
		sld_virtual_jtag_component.sld_auto_instance_index = "YES",
		sld_virtual_jtag_component.sld_instance_index = 0,
		sld_virtual_jtag_component.sld_ir_width = 2,
		sld_virtual_jtag_component.sld_sim_action = "",
		sld_virtual_jtag_component.sld_sim_n_scan = 0,
		sld_virtual_jtag_component.sld_sim_total_length = 0;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: show_jtag_state STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: SLD_AUTO_INSTANCE_INDEX STRING "YES"
// Retrieval info: CONSTANT: SLD_INSTANCE_INDEX NUMERIC "0"
// Retrieval info: CONSTANT: SLD_IR_WIDTH NUMERIC "2"
// Retrieval info: CONSTANT: SLD_SIM_ACTION STRING ""
// Retrieval info: CONSTANT: SLD_SIM_N_SCAN NUMERIC "0"
// Retrieval info: CONSTANT: SLD_SIM_TOTAL_LENGTH NUMERIC "0"
// Retrieval info: USED_PORT: ir_in 0 0 2 0 OUTPUT NODEFVAL "ir_in[1..0]"
// Retrieval info: USED_PORT: ir_out 0 0 2 0 INPUT NODEFVAL "ir_out[1..0]"
// Retrieval info: USED_PORT: tck 0 0 0 0 OUTPUT NODEFVAL "tck"
// Retrieval info: USED_PORT: tdi 0 0 0 0 OUTPUT NODEFVAL "tdi"
// Retrieval info: USED_PORT: tdo 0 0 0 0 INPUT NODEFVAL "tdo"
// Retrieval info: USED_PORT: virtual_state_cdr 0 0 0 0 OUTPUT NODEFVAL "virtual_state_cdr"
// Retrieval info: USED_PORT: virtual_state_cir 0 0 0 0 OUTPUT NODEFVAL "virtual_state_cir"
// Retrieval info: USED_PORT: virtual_state_e1dr 0 0 0 0 OUTPUT NODEFVAL "virtual_state_e1dr"
// Retrieval info: USED_PORT: virtual_state_e2dr 0 0 0 0 OUTPUT NODEFVAL "virtual_state_e2dr"
// Retrieval info: USED_PORT: virtual_state_pdr 0 0 0 0 OUTPUT NODEFVAL "virtual_state_pdr"
// Retrieval info: USED_PORT: virtual_state_sdr 0 0 0 0 OUTPUT NODEFVAL "virtual_state_sdr"
// Retrieval info: USED_PORT: virtual_state_udr 0 0 0 0 OUTPUT NODEFVAL "virtual_state_udr"
// Retrieval info: USED_PORT: virtual_state_uir 0 0 0 0 OUTPUT NODEFVAL "virtual_state_uir"
// Retrieval info: CONNECT: @ir_out 0 0 2 0 ir_out 0 0 2 0
// Retrieval info: CONNECT: @tdo 0 0 0 0 tdo 0 0 0 0
// Retrieval info: CONNECT: ir_in 0 0 2 0 @ir_in 0 0 2 0
// Retrieval info: CONNECT: tck 0 0 0 0 @tck 0 0 0 0
// Retrieval info: CONNECT: tdi 0 0 0 0 @tdi 0 0 0 0
// Retrieval info: CONNECT: virtual_state_cdr 0 0 0 0 @virtual_state_cdr 0 0 0 0
// Retrieval info: CONNECT: virtual_state_cir 0 0 0 0 @virtual_state_cir 0 0 0 0
// Retrieval info: CONNECT: virtual_state_e1dr 0 0 0 0 @virtual_state_e1dr 0 0 0 0
// Retrieval info: CONNECT: virtual_state_e2dr 0 0 0 0 @virtual_state_e2dr 0 0 0 0
// Retrieval info: CONNECT: virtual_state_pdr 0 0 0 0 @virtual_state_pdr 0 0 0 0
// Retrieval info: CONNECT: virtual_state_sdr 0 0 0 0 @virtual_state_sdr 0 0 0 0
// Retrieval info: CONNECT: virtual_state_udr 0 0 0 0 @virtual_state_udr 0 0 0 0
// Retrieval info: CONNECT: virtual_state_uir 0 0 0 0 @virtual_state_uir 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL vJTAG.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL vJTAG.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL vJTAG.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL vJTAG.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL vJTAG_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL vJTAG_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf
