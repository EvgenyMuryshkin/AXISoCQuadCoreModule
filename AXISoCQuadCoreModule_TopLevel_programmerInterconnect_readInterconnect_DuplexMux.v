`timescale 1ns/1ps
`default_nettype none
// PLEASE READ THIS, IT MAY SAVE YOU SOME TIME AND MONEY, THANK YOU!
// * This file was generated by Quokka FPGA Toolkit.
// * Generated code is your property, do whatever you want with it
// * Place custom code between [BEGIN USER ***] and [END USER ***].
// * CAUTION: All code outside of [USER] scope is subject to regeneration.
// * Bad things happen sometimes in developer's life,
//   it is recommended to use source control management software (e.g. git, bzr etc) to keep your custom code safe'n'sound.
// * Internal structure of code is subject to change.
//   You can use some of signals in custom code, but most likely they will not exist in future (e.g. will get shorter or gone completely)
// * Please send your feedback, comments, improvement ideas etc. to evmuryshkin@gmail.com
// * Visit https://github.com/EvgenyMuryshkin/QuokkaEvaluation to access latest version of playground
//
// DISCLAIMER:
//   Code comes AS-IS, it is your responsibility to make sure it is working as expected
//   no responsibility will be taken for any loss or damage caused by use of Quokka toolkit.
//
// System configuration name is AXISoCQuadCoreModule_TopLevel_programmerInterconnect_readInterconnect_DuplexMux, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_programmerInterconnect_readInterconnect_DuplexMux
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire [83:0] iLeft0,
	input wire [0:0] iLeftAddr,
	input wire iLeftAddrValid,
	input wire [52:0] iRight0,
	input wire [52:0] iRight1,
	input wire [52:0] iRight2,
	input wire [52:0] iRight3,
	input wire [52:0] iRight4,
	input wire [2:0] iRightAddr,
	input wire iRightAddrValid,
	output wire [83:0] oLeft0,
	output wire [83:0] oLeft1,
	output wire [83:0] oLeft2,
	output wire [83:0] oLeft3,
	output wire [83:0] oLeft4,
	output wire [83:0] oMuxLeftData,
	output wire [52:0] oMuxRightData,
	output wire [52:0] oRight0
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire signed [1: 0] leftCount = 2'b01;
	wire signed [3: 0] rightCount = 4'b0101;
	wire FullDuplexMuxModule_L94F13L104T14_0_rightIndex = 1'b0;
	wire FullDuplexMuxModule_L94F13L104T14_1_rightIndex = 1'b1;
	wire [1: 0] FullDuplexMuxModule_L94F13L104T14_2_rightIndex = 2'b10;
	wire [1: 0] FullDuplexMuxModule_L94F13L104T14_3_rightIndex = 2'b11;
	wire [2: 0] FullDuplexMuxModule_L94F13L104T14_4_rightIndex = 3'b100;
	wire FullDuplexMuxModule_L118F13L128T14_0_leftIndex = 1'b0;
	wire [0: 0] Inputs_iLeftAddr;
	wire Inputs_iLeftAddrValid;
	wire [2: 0] Inputs_iRightAddr;
	wire Inputs_iRightAddrValid;
	reg [7: 0] mEmptyLeftData_AR_ARID;
	reg [31: 0] mEmptyLeftData_AR_ARADDR;
	reg [7: 0] mEmptyLeftData_AR_ARLEN;
	reg [2: 0] mEmptyLeftData_AR_ARSIZE;
	reg [1: 0] mEmptyLeftData_AR_ARBURST;
	reg [1: 0] mEmptyLeftData_AR_ARLOCK;
	reg [3: 0] mEmptyLeftData_AR_ARCACHE;
	reg [2: 0] mEmptyLeftData_AR_ARPROT;
	reg [3: 0] mEmptyLeftData_AR_ARQOS;
	reg [7: 0] mEmptyLeftData_AR_ARREGION;
	reg [7: 0] mEmptyLeftData_AR_ARUSER;
	reg mEmptyLeftData_AR_ARVALID;
	reg mEmptyLeftData_R_RREADY;
	reg mEmptyRightData_AR_ARREADY;
	reg [7: 0] mEmptyRightData_R_RID;
	reg [1: 0] mEmptyRightData_R_RRESP;
	reg mEmptyRightData_R_RLAST;
	reg [7: 0] mEmptyRightData_R_RUSER;
	reg mEmptyRightData_R_RVALID;
	reg [7: 0] mMuxLeftData_AR_ARID;
	reg [31: 0] mMuxLeftData_AR_ARADDR;
	reg [7: 0] mMuxLeftData_AR_ARLEN;
	reg [2: 0] mMuxLeftData_AR_ARSIZE;
	reg [1: 0] mMuxLeftData_AR_ARBURST;
	reg [1: 0] mMuxLeftData_AR_ARLOCK;
	reg [3: 0] mMuxLeftData_AR_ARCACHE;
	reg [2: 0] mMuxLeftData_AR_ARPROT;
	reg [3: 0] mMuxLeftData_AR_ARQOS;
	reg [7: 0] mMuxLeftData_AR_ARREGION;
	reg [7: 0] mMuxLeftData_AR_ARUSER;
	reg mMuxLeftData_AR_ARVALID;
	reg mMuxLeftData_R_RREADY;
	reg mMuxRightData_AR_ARREADY;
	reg [7: 0] mMuxRightData_R_RID;
	reg [1: 0] mMuxRightData_R_RRESP;
	reg mMuxRightData_R_RLAST;
	reg [7: 0] mMuxRightData_R_RUSER;
	reg mMuxRightData_R_RVALID;
	wire FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr;
	wire FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr_1;
	wire FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr_2;
	wire FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr;
	wire FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr_1;
	wire FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr_2;
	wire FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr;
	wire FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr_1;
	wire FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr_2;
	wire FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr;
	wire FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr_1;
	wire FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr_2;
	wire FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr;
	wire FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr_1;
	wire FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr_2;
	wire FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr;
	wire FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr_1;
	wire FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr_2;
	wire FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_Expr;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_ExprLhs;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_ExprRhs;
	wire FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_Expr;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_ExprLhs;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_ExprRhs;
	wire FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_Expr;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_ExprLhs;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_ExprRhs;
	wire FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_Expr;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_ExprLhs;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_ExprRhs;
	wire FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_Expr;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_ExprLhs;
	wire signed [3: 0] FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_ExprRhs;
	wire FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_Expr;
	wire signed [1: 0] FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_ExprLhs;
	wire signed [1: 0] FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_ExprRhs;
	wire [83 : 0] Inputs_iLeft [0 : 0];
	wire [52 : 0] Inputs_iRight [0 : 4];
	reg [7 : 0] mEmptyRightData_R_RDATA [0 : 3];
	integer mEmptyRightData_R_RDATA_i;
	initial
	begin : Init_mEmptyRightData_R_RDATA
		for (mEmptyRightData_R_RDATA_i = 0; mEmptyRightData_R_RDATA_i < 4; mEmptyRightData_R_RDATA_i = mEmptyRightData_R_RDATA_i + 1)
			mEmptyRightData_R_RDATA[mEmptyRightData_R_RDATA_i] = 0;
	end
	reg [7 : 0] mMuxRightData_R_RDATA [0 : 3];
	integer mMuxRightData_R_RDATA_i;
	initial
	begin : Init_mMuxRightData_R_RDATA
		for (mMuxRightData_R_RDATA_i = 0; mMuxRightData_R_RDATA_i < 4; mMuxRightData_R_RDATA_i = mMuxRightData_R_RDATA_i + 1)
			mMuxRightData_R_RDATA[mMuxRightData_R_RDATA_i] = 0;
	end
	reg [83 : 0] mOutLeftData [0 : 4];
	integer mOutLeftData_i;
	initial
	begin : Init_mOutLeftData
		for (mOutLeftData_i = 0; mOutLeftData_i < 5; mOutLeftData_i = mOutLeftData_i + 1)
			mOutLeftData[mOutLeftData_i] = 0;
	end
	reg [52 : 0] mOutRightData [0 : 0];
	integer mOutRightData_i;
	initial
	begin : Init_mOutRightData
		for (mOutRightData_i = 0; mOutRightData_i < 1; mOutRightData_i = mOutRightData_i + 1)
			mOutRightData[mOutRightData_i] = 0;
	end
	assign FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_Expr = FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_ExprLhs == FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_ExprRhs ? 1'b1 : 1'b0;
	assign FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_Expr = FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_ExprLhs == FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_ExprRhs ? 1'b1 : 1'b0;
	assign FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_Expr = FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_ExprLhs == FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_ExprRhs ? 1'b1 : 1'b0;
	assign FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_Expr = FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_ExprLhs == FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_ExprRhs ? 1'b1 : 1'b0;
	assign FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_Expr = FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_ExprLhs == FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_ExprRhs ? 1'b1 : 1'b0;
	assign FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_Expr = FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_ExprLhs == FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_ExprRhs ? 1'b1 : 1'b0;
	assign FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr = FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr_1 & FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr_2;
	assign FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr = FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr_1 & FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr_2;
	assign FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr = FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr_1 & FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr_2;
	assign FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr = FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr_1 & FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr_2;
	assign FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr = FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr_1 & FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr_2;
	assign FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr = FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr_1 & FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr_2;
	always @ (*)
	begin
		if ((Inputs_iLeftAddrValid == 1))
		begin
			mMuxLeftData_R_RREADY = Inputs_iLeft[Inputs_iLeftAddr][83];
			mMuxLeftData_AR_ARVALID = Inputs_iLeft[Inputs_iLeftAddr][82];
			mMuxLeftData_AR_ARUSER = Inputs_iLeft[Inputs_iLeftAddr][81:74];
			mMuxLeftData_AR_ARREGION = Inputs_iLeft[Inputs_iLeftAddr][73:66];
			mMuxLeftData_AR_ARQOS = Inputs_iLeft[Inputs_iLeftAddr][65:62];
			mMuxLeftData_AR_ARPROT = Inputs_iLeft[Inputs_iLeftAddr][61:59];
			mMuxLeftData_AR_ARCACHE = Inputs_iLeft[Inputs_iLeftAddr][58:55];
			mMuxLeftData_AR_ARLOCK = Inputs_iLeft[Inputs_iLeftAddr][54:53];
			mMuxLeftData_AR_ARBURST = Inputs_iLeft[Inputs_iLeftAddr][52:51];
			mMuxLeftData_AR_ARSIZE = Inputs_iLeft[Inputs_iLeftAddr][50:48];
			mMuxLeftData_AR_ARLEN = Inputs_iLeft[Inputs_iLeftAddr][47:40];
			mMuxLeftData_AR_ARADDR = Inputs_iLeft[Inputs_iLeftAddr][39:8];
			mMuxLeftData_AR_ARID = Inputs_iLeft[Inputs_iLeftAddr][7:0];
		end
		else
		begin
			mMuxLeftData_AR_ARID = mEmptyLeftData_AR_ARID;
			mMuxLeftData_AR_ARADDR = mEmptyLeftData_AR_ARADDR;
			mMuxLeftData_AR_ARLEN = mEmptyLeftData_AR_ARLEN;
			mMuxLeftData_AR_ARSIZE = mEmptyLeftData_AR_ARSIZE;
			mMuxLeftData_AR_ARBURST = mEmptyLeftData_AR_ARBURST;
			mMuxLeftData_AR_ARLOCK = mEmptyLeftData_AR_ARLOCK;
			mMuxLeftData_AR_ARCACHE = mEmptyLeftData_AR_ARCACHE;
			mMuxLeftData_AR_ARPROT = mEmptyLeftData_AR_ARPROT;
			mMuxLeftData_AR_ARQOS = mEmptyLeftData_AR_ARQOS;
			mMuxLeftData_AR_ARREGION = mEmptyLeftData_AR_ARREGION;
			mMuxLeftData_AR_ARUSER = mEmptyLeftData_AR_ARUSER;
			mMuxLeftData_AR_ARVALID = mEmptyLeftData_AR_ARVALID;
			mMuxLeftData_R_RREADY = mEmptyLeftData_R_RREADY;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[0][83] = mMuxLeftData_R_RREADY;
			mOutLeftData[0][82] = mMuxLeftData_AR_ARVALID;
			mOutLeftData[0][81:74] = mMuxLeftData_AR_ARUSER;
			mOutLeftData[0][73:66] = mMuxLeftData_AR_ARREGION;
			mOutLeftData[0][65:62] = mMuxLeftData_AR_ARQOS;
			mOutLeftData[0][61:59] = mMuxLeftData_AR_ARPROT;
			mOutLeftData[0][58:55] = mMuxLeftData_AR_ARCACHE;
			mOutLeftData[0][54:53] = mMuxLeftData_AR_ARLOCK;
			mOutLeftData[0][52:51] = mMuxLeftData_AR_ARBURST;
			mOutLeftData[0][50:48] = mMuxLeftData_AR_ARSIZE;
			mOutLeftData[0][47:40] = mMuxLeftData_AR_ARLEN;
			mOutLeftData[0][39:8] = mMuxLeftData_AR_ARADDR;
			mOutLeftData[0][7:0] = mMuxLeftData_AR_ARID;
		end
		else
		begin
			mOutLeftData[0][83] = mEmptyLeftData_R_RREADY;
			mOutLeftData[0][82] = mEmptyLeftData_AR_ARVALID;
			mOutLeftData[0][81:74] = mEmptyLeftData_AR_ARUSER;
			mOutLeftData[0][73:66] = mEmptyLeftData_AR_ARREGION;
			mOutLeftData[0][65:62] = mEmptyLeftData_AR_ARQOS;
			mOutLeftData[0][61:59] = mEmptyLeftData_AR_ARPROT;
			mOutLeftData[0][58:55] = mEmptyLeftData_AR_ARCACHE;
			mOutLeftData[0][54:53] = mEmptyLeftData_AR_ARLOCK;
			mOutLeftData[0][52:51] = mEmptyLeftData_AR_ARBURST;
			mOutLeftData[0][50:48] = mEmptyLeftData_AR_ARSIZE;
			mOutLeftData[0][47:40] = mEmptyLeftData_AR_ARLEN;
			mOutLeftData[0][39:8] = mEmptyLeftData_AR_ARADDR;
			mOutLeftData[0][7:0] = mEmptyLeftData_AR_ARID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[1][83] = mMuxLeftData_R_RREADY;
			mOutLeftData[1][82] = mMuxLeftData_AR_ARVALID;
			mOutLeftData[1][81:74] = mMuxLeftData_AR_ARUSER;
			mOutLeftData[1][73:66] = mMuxLeftData_AR_ARREGION;
			mOutLeftData[1][65:62] = mMuxLeftData_AR_ARQOS;
			mOutLeftData[1][61:59] = mMuxLeftData_AR_ARPROT;
			mOutLeftData[1][58:55] = mMuxLeftData_AR_ARCACHE;
			mOutLeftData[1][54:53] = mMuxLeftData_AR_ARLOCK;
			mOutLeftData[1][52:51] = mMuxLeftData_AR_ARBURST;
			mOutLeftData[1][50:48] = mMuxLeftData_AR_ARSIZE;
			mOutLeftData[1][47:40] = mMuxLeftData_AR_ARLEN;
			mOutLeftData[1][39:8] = mMuxLeftData_AR_ARADDR;
			mOutLeftData[1][7:0] = mMuxLeftData_AR_ARID;
		end
		else
		begin
			mOutLeftData[1][83] = mEmptyLeftData_R_RREADY;
			mOutLeftData[1][82] = mEmptyLeftData_AR_ARVALID;
			mOutLeftData[1][81:74] = mEmptyLeftData_AR_ARUSER;
			mOutLeftData[1][73:66] = mEmptyLeftData_AR_ARREGION;
			mOutLeftData[1][65:62] = mEmptyLeftData_AR_ARQOS;
			mOutLeftData[1][61:59] = mEmptyLeftData_AR_ARPROT;
			mOutLeftData[1][58:55] = mEmptyLeftData_AR_ARCACHE;
			mOutLeftData[1][54:53] = mEmptyLeftData_AR_ARLOCK;
			mOutLeftData[1][52:51] = mEmptyLeftData_AR_ARBURST;
			mOutLeftData[1][50:48] = mEmptyLeftData_AR_ARSIZE;
			mOutLeftData[1][47:40] = mEmptyLeftData_AR_ARLEN;
			mOutLeftData[1][39:8] = mEmptyLeftData_AR_ARADDR;
			mOutLeftData[1][7:0] = mEmptyLeftData_AR_ARID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[2][83] = mMuxLeftData_R_RREADY;
			mOutLeftData[2][82] = mMuxLeftData_AR_ARVALID;
			mOutLeftData[2][81:74] = mMuxLeftData_AR_ARUSER;
			mOutLeftData[2][73:66] = mMuxLeftData_AR_ARREGION;
			mOutLeftData[2][65:62] = mMuxLeftData_AR_ARQOS;
			mOutLeftData[2][61:59] = mMuxLeftData_AR_ARPROT;
			mOutLeftData[2][58:55] = mMuxLeftData_AR_ARCACHE;
			mOutLeftData[2][54:53] = mMuxLeftData_AR_ARLOCK;
			mOutLeftData[2][52:51] = mMuxLeftData_AR_ARBURST;
			mOutLeftData[2][50:48] = mMuxLeftData_AR_ARSIZE;
			mOutLeftData[2][47:40] = mMuxLeftData_AR_ARLEN;
			mOutLeftData[2][39:8] = mMuxLeftData_AR_ARADDR;
			mOutLeftData[2][7:0] = mMuxLeftData_AR_ARID;
		end
		else
		begin
			mOutLeftData[2][83] = mEmptyLeftData_R_RREADY;
			mOutLeftData[2][82] = mEmptyLeftData_AR_ARVALID;
			mOutLeftData[2][81:74] = mEmptyLeftData_AR_ARUSER;
			mOutLeftData[2][73:66] = mEmptyLeftData_AR_ARREGION;
			mOutLeftData[2][65:62] = mEmptyLeftData_AR_ARQOS;
			mOutLeftData[2][61:59] = mEmptyLeftData_AR_ARPROT;
			mOutLeftData[2][58:55] = mEmptyLeftData_AR_ARCACHE;
			mOutLeftData[2][54:53] = mEmptyLeftData_AR_ARLOCK;
			mOutLeftData[2][52:51] = mEmptyLeftData_AR_ARBURST;
			mOutLeftData[2][50:48] = mEmptyLeftData_AR_ARSIZE;
			mOutLeftData[2][47:40] = mEmptyLeftData_AR_ARLEN;
			mOutLeftData[2][39:8] = mEmptyLeftData_AR_ARADDR;
			mOutLeftData[2][7:0] = mEmptyLeftData_AR_ARID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[3][83] = mMuxLeftData_R_RREADY;
			mOutLeftData[3][82] = mMuxLeftData_AR_ARVALID;
			mOutLeftData[3][81:74] = mMuxLeftData_AR_ARUSER;
			mOutLeftData[3][73:66] = mMuxLeftData_AR_ARREGION;
			mOutLeftData[3][65:62] = mMuxLeftData_AR_ARQOS;
			mOutLeftData[3][61:59] = mMuxLeftData_AR_ARPROT;
			mOutLeftData[3][58:55] = mMuxLeftData_AR_ARCACHE;
			mOutLeftData[3][54:53] = mMuxLeftData_AR_ARLOCK;
			mOutLeftData[3][52:51] = mMuxLeftData_AR_ARBURST;
			mOutLeftData[3][50:48] = mMuxLeftData_AR_ARSIZE;
			mOutLeftData[3][47:40] = mMuxLeftData_AR_ARLEN;
			mOutLeftData[3][39:8] = mMuxLeftData_AR_ARADDR;
			mOutLeftData[3][7:0] = mMuxLeftData_AR_ARID;
		end
		else
		begin
			mOutLeftData[3][83] = mEmptyLeftData_R_RREADY;
			mOutLeftData[3][82] = mEmptyLeftData_AR_ARVALID;
			mOutLeftData[3][81:74] = mEmptyLeftData_AR_ARUSER;
			mOutLeftData[3][73:66] = mEmptyLeftData_AR_ARREGION;
			mOutLeftData[3][65:62] = mEmptyLeftData_AR_ARQOS;
			mOutLeftData[3][61:59] = mEmptyLeftData_AR_ARPROT;
			mOutLeftData[3][58:55] = mEmptyLeftData_AR_ARCACHE;
			mOutLeftData[3][54:53] = mEmptyLeftData_AR_ARLOCK;
			mOutLeftData[3][52:51] = mEmptyLeftData_AR_ARBURST;
			mOutLeftData[3][50:48] = mEmptyLeftData_AR_ARSIZE;
			mOutLeftData[3][47:40] = mEmptyLeftData_AR_ARLEN;
			mOutLeftData[3][39:8] = mEmptyLeftData_AR_ARADDR;
			mOutLeftData[3][7:0] = mEmptyLeftData_AR_ARID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[4][83] = mMuxLeftData_R_RREADY;
			mOutLeftData[4][82] = mMuxLeftData_AR_ARVALID;
			mOutLeftData[4][81:74] = mMuxLeftData_AR_ARUSER;
			mOutLeftData[4][73:66] = mMuxLeftData_AR_ARREGION;
			mOutLeftData[4][65:62] = mMuxLeftData_AR_ARQOS;
			mOutLeftData[4][61:59] = mMuxLeftData_AR_ARPROT;
			mOutLeftData[4][58:55] = mMuxLeftData_AR_ARCACHE;
			mOutLeftData[4][54:53] = mMuxLeftData_AR_ARLOCK;
			mOutLeftData[4][52:51] = mMuxLeftData_AR_ARBURST;
			mOutLeftData[4][50:48] = mMuxLeftData_AR_ARSIZE;
			mOutLeftData[4][47:40] = mMuxLeftData_AR_ARLEN;
			mOutLeftData[4][39:8] = mMuxLeftData_AR_ARADDR;
			mOutLeftData[4][7:0] = mMuxLeftData_AR_ARID;
		end
		else
		begin
			mOutLeftData[4][83] = mEmptyLeftData_R_RREADY;
			mOutLeftData[4][82] = mEmptyLeftData_AR_ARVALID;
			mOutLeftData[4][81:74] = mEmptyLeftData_AR_ARUSER;
			mOutLeftData[4][73:66] = mEmptyLeftData_AR_ARREGION;
			mOutLeftData[4][65:62] = mEmptyLeftData_AR_ARQOS;
			mOutLeftData[4][61:59] = mEmptyLeftData_AR_ARPROT;
			mOutLeftData[4][58:55] = mEmptyLeftData_AR_ARCACHE;
			mOutLeftData[4][54:53] = mEmptyLeftData_AR_ARLOCK;
			mOutLeftData[4][52:51] = mEmptyLeftData_AR_ARBURST;
			mOutLeftData[4][50:48] = mEmptyLeftData_AR_ARSIZE;
			mOutLeftData[4][47:40] = mEmptyLeftData_AR_ARLEN;
			mOutLeftData[4][39:8] = mEmptyLeftData_AR_ARADDR;
			mOutLeftData[4][7:0] = mEmptyLeftData_AR_ARID;
		end
	end
	always @ (*)
	begin
		if ((Inputs_iRightAddrValid == 1))
		begin
			mMuxRightData_R_RVALID = Inputs_iRight[Inputs_iRightAddr][52];
			mMuxRightData_R_RUSER = Inputs_iRight[Inputs_iRightAddr][51:44];
			mMuxRightData_R_RLAST = Inputs_iRight[Inputs_iRightAddr][43];
			mMuxRightData_R_RRESP = Inputs_iRight[Inputs_iRightAddr][42:41];
			mMuxRightData_R_RDATA[3] = Inputs_iRight[Inputs_iRightAddr][40:33];
			mMuxRightData_R_RDATA[2] = Inputs_iRight[Inputs_iRightAddr][32:25];
			mMuxRightData_R_RDATA[1] = Inputs_iRight[Inputs_iRightAddr][24:17];
			mMuxRightData_R_RDATA[0] = Inputs_iRight[Inputs_iRightAddr][16:9];
			mMuxRightData_R_RID = Inputs_iRight[Inputs_iRightAddr][8:1];
			mMuxRightData_AR_ARREADY = Inputs_iRight[Inputs_iRightAddr][0];
		end
		else
		begin
			mMuxRightData_AR_ARREADY = mEmptyRightData_AR_ARREADY;
			mMuxRightData_R_RID = mEmptyRightData_R_RID;
			mMuxRightData_R_RDATA[0] = mEmptyRightData_R_RDATA[0];
			mMuxRightData_R_RDATA[1] = mEmptyRightData_R_RDATA[1];
			mMuxRightData_R_RDATA[2] = mEmptyRightData_R_RDATA[2];
			mMuxRightData_R_RDATA[3] = mEmptyRightData_R_RDATA[3];
			mMuxRightData_R_RRESP = mEmptyRightData_R_RRESP;
			mMuxRightData_R_RLAST = mEmptyRightData_R_RLAST;
			mMuxRightData_R_RUSER = mEmptyRightData_R_RUSER;
			mMuxRightData_R_RVALID = mEmptyRightData_R_RVALID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr == 1))
		begin
			mOutRightData[0][52] = mMuxRightData_R_RVALID;
			mOutRightData[0][51:44] = mMuxRightData_R_RUSER;
			mOutRightData[0][43] = mMuxRightData_R_RLAST;
			mOutRightData[0][42:41] = mMuxRightData_R_RRESP;
			mOutRightData[0][40:9] = {
				mMuxRightData_R_RDATA[3],
				mMuxRightData_R_RDATA[2],
				mMuxRightData_R_RDATA[1],
				mMuxRightData_R_RDATA[0]
			}
			;
			mOutRightData[0][8:1] = mMuxRightData_R_RID;
			mOutRightData[0][0] = mMuxRightData_AR_ARREADY;
		end
		else
		begin
			mOutRightData[0][52] = mEmptyRightData_R_RVALID;
			mOutRightData[0][51:44] = mEmptyRightData_R_RUSER;
			mOutRightData[0][43] = mEmptyRightData_R_RLAST;
			mOutRightData[0][42:41] = mEmptyRightData_R_RRESP;
			mOutRightData[0][40:9] = {
				mEmptyRightData_R_RDATA[3],
				mEmptyRightData_R_RDATA[2],
				mEmptyRightData_R_RDATA[1],
				mEmptyRightData_R_RDATA[0]
			}
			;
			mOutRightData[0][8:1] = mEmptyRightData_R_RID;
			mOutRightData[0][0] = mEmptyRightData_AR_ARREADY;
		end
	end
	assign FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_ExprLhs = {
		1'b0,
		Inputs_iRightAddr
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_ExprRhs = {
		{3{1'b0}},
		FullDuplexMuxModule_L94F13L104T14_0_rightIndex
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_ExprLhs = {
		1'b0,
		Inputs_iRightAddr
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_ExprRhs = {
		{3{1'b0}},
		FullDuplexMuxModule_L94F13L104T14_1_rightIndex
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_ExprLhs = {
		1'b0,
		Inputs_iRightAddr
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_ExprRhs = {
		{2{1'b0}},
		FullDuplexMuxModule_L94F13L104T14_2_rightIndex
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_ExprLhs = {
		1'b0,
		Inputs_iRightAddr
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_ExprRhs = {
		{2{1'b0}},
		FullDuplexMuxModule_L94F13L104T14_3_rightIndex
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_ExprLhs = {
		1'b0,
		Inputs_iRightAddr
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_ExprRhs = {
		1'b0,
		FullDuplexMuxModule_L94F13L104T14_4_rightIndex
	}
	;
	assign FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_ExprLhs = {
		1'b0,
		Inputs_iLeftAddr
	}
	;
	assign FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_ExprRhs = {
		1'b0,
		FullDuplexMuxModule_L118F13L128T14_0_leftIndex
	}
	;
	assign FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr_1 = Inputs_iRightAddrValid;
	assign FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr_2 = FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F47T78_Expr;
	assign FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr_1 = Inputs_iRightAddrValid;
	assign FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr_2 = FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F47T78_Expr;
	assign FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr_1 = Inputs_iRightAddrValid;
	assign FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr_2 = FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F47T78_Expr;
	assign FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr_1 = Inputs_iRightAddrValid;
	assign FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr_2 = FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F47T78_Expr;
	assign FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr_1 = Inputs_iRightAddrValid;
	assign FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr_2 = FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F47T78_Expr;
	assign FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr_1 = Inputs_iLeftAddrValid;
	assign FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr_2 = FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F46T75_Expr;
	assign Inputs_iLeft[0] = iLeft0;
	assign Inputs_iLeftAddr = iLeftAddr;
	assign Inputs_iLeftAddrValid = iLeftAddrValid;
	assign Inputs_iRight[0] = iRight0;
	assign Inputs_iRight[1] = iRight1;
	assign Inputs_iRight[2] = iRight2;
	assign Inputs_iRight[3] = iRight3;
	assign Inputs_iRight[4] = iRight4;
	assign Inputs_iRightAddr = iRightAddr;
	assign Inputs_iRightAddrValid = iRightAddrValid;
	assign oLeft0 = mOutLeftData[0];
	assign oLeft1 = mOutLeftData[1];
	assign oLeft2 = mOutLeftData[2];
	assign oLeft3 = mOutLeftData[3];
	assign oLeft4 = mOutLeftData[4];
	assign oMuxLeftData[83] = mMuxLeftData_R_RREADY;
	assign oMuxLeftData[82] = mMuxLeftData_AR_ARVALID;
	assign oMuxLeftData[81:74] = mMuxLeftData_AR_ARUSER;
	assign oMuxLeftData[73:66] = mMuxLeftData_AR_ARREGION;
	assign oMuxLeftData[65:62] = mMuxLeftData_AR_ARQOS;
	assign oMuxLeftData[61:59] = mMuxLeftData_AR_ARPROT;
	assign oMuxLeftData[58:55] = mMuxLeftData_AR_ARCACHE;
	assign oMuxLeftData[54:53] = mMuxLeftData_AR_ARLOCK;
	assign oMuxLeftData[52:51] = mMuxLeftData_AR_ARBURST;
	assign oMuxLeftData[50:48] = mMuxLeftData_AR_ARSIZE;
	assign oMuxLeftData[47:40] = mMuxLeftData_AR_ARLEN;
	assign oMuxLeftData[39:8] = mMuxLeftData_AR_ARADDR;
	assign oMuxLeftData[7:0] = mMuxLeftData_AR_ARID;
	assign oMuxRightData[52] = mMuxRightData_R_RVALID;
	assign oMuxRightData[51:44] = mMuxRightData_R_RUSER;
	assign oMuxRightData[43] = mMuxRightData_R_RLAST;
	assign oMuxRightData[42:41] = mMuxRightData_R_RRESP;
	assign oMuxRightData[40:33] = mMuxRightData_R_RDATA[3];
	assign oMuxRightData[32:25] = mMuxRightData_R_RDATA[2];
	assign oMuxRightData[24:17] = mMuxRightData_R_RDATA[1];
	assign oMuxRightData[16:9] = mMuxRightData_R_RDATA[0];
	assign oMuxRightData[8:1] = mMuxRightData_R_RID;
	assign oMuxRightData[0] = mMuxRightData_AR_ARREADY;
	assign oRight0 = mOutRightData[0];
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
