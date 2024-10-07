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
// System configuration name is AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_DuplexMux, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_programmerInterconnect_writeInterconnect_DuplexMux
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire [137:0] iLeft0,
	input wire [0:0] iLeftAddr,
	input wire iLeftAddrValid,
	input wire [20:0] iRight0,
	input wire [20:0] iRight1,
	input wire [20:0] iRight2,
	input wire [20:0] iRight3,
	input wire [20:0] iRight4,
	input wire [2:0] iRightAddr,
	input wire iRightAddrValid,
	output wire [137:0] oLeft0,
	output wire [137:0] oLeft1,
	output wire [137:0] oLeft2,
	output wire [137:0] oLeft3,
	output wire [137:0] oLeft4,
	output wire [137:0] oMuxLeftData,
	output wire [20:0] oMuxRightData,
	output wire [20:0] oRight0
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
	reg [7: 0] mEmptyLeftData_AW_AWID;
	reg [31: 0] mEmptyLeftData_AW_AWADDR;
	reg [7: 0] mEmptyLeftData_AW_AWLEN;
	reg [2: 0] mEmptyLeftData_AW_AWSIZE;
	reg [1: 0] mEmptyLeftData_AW_AWBURST;
	reg [1: 0] mEmptyLeftData_AW_AWLOCK;
	reg [3: 0] mEmptyLeftData_AW_AWCACHE;
	reg [2: 0] mEmptyLeftData_AW_AWPROT;
	reg [3: 0] mEmptyLeftData_AW_AWQOS;
	reg [7: 0] mEmptyLeftData_AW_AWREGION;
	reg [7: 0] mEmptyLeftData_AW_AWUSER;
	reg mEmptyLeftData_AW_AWVALID;
	reg [7: 0] mEmptyLeftData_W_WID;
	reg [3: 0] mEmptyLeftData_W_WSTRB;
	reg mEmptyLeftData_W_WLAST;
	reg [7: 0] mEmptyLeftData_W_WUSER;
	reg mEmptyLeftData_W_WVALID;
	reg mEmptyLeftData_B_BREADY;
	reg mEmptyRightData_AW_AWREADY;
	reg [7: 0] mEmptyRightData_B_BID;
	reg [1: 0] mEmptyRightData_B_BRESP;
	reg [7: 0] mEmptyRightData_B_BUSER;
	reg mEmptyRightData_B_BVALID;
	reg mEmptyRightData_W_WREADY;
	reg [7: 0] mMuxLeftData_AW_AWID;
	reg [31: 0] mMuxLeftData_AW_AWADDR;
	reg [7: 0] mMuxLeftData_AW_AWLEN;
	reg [2: 0] mMuxLeftData_AW_AWSIZE;
	reg [1: 0] mMuxLeftData_AW_AWBURST;
	reg [1: 0] mMuxLeftData_AW_AWLOCK;
	reg [3: 0] mMuxLeftData_AW_AWCACHE;
	reg [2: 0] mMuxLeftData_AW_AWPROT;
	reg [3: 0] mMuxLeftData_AW_AWQOS;
	reg [7: 0] mMuxLeftData_AW_AWREGION;
	reg [7: 0] mMuxLeftData_AW_AWUSER;
	reg mMuxLeftData_AW_AWVALID;
	reg [7: 0] mMuxLeftData_W_WID;
	reg [3: 0] mMuxLeftData_W_WSTRB;
	reg mMuxLeftData_W_WLAST;
	reg [7: 0] mMuxLeftData_W_WUSER;
	reg mMuxLeftData_W_WVALID;
	reg mMuxLeftData_B_BREADY;
	reg mMuxRightData_AW_AWREADY;
	reg [7: 0] mMuxRightData_B_BID;
	reg [1: 0] mMuxRightData_B_BRESP;
	reg [7: 0] mMuxRightData_B_BUSER;
	reg mMuxRightData_B_BVALID;
	reg mMuxRightData_W_WREADY;
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
	wire [137 : 0] Inputs_iLeft [0 : 0];
	wire [20 : 0] Inputs_iRight [0 : 4];
	reg [7 : 0] mEmptyLeftData_W_WDATA [0 : 3];
	integer mEmptyLeftData_W_WDATA_i;
	initial
	begin : Init_mEmptyLeftData_W_WDATA
		for (mEmptyLeftData_W_WDATA_i = 0; mEmptyLeftData_W_WDATA_i < 4; mEmptyLeftData_W_WDATA_i = mEmptyLeftData_W_WDATA_i + 1)
			mEmptyLeftData_W_WDATA[mEmptyLeftData_W_WDATA_i] = 0;
	end
	reg [7 : 0] mMuxLeftData_W_WDATA [0 : 3];
	integer mMuxLeftData_W_WDATA_i;
	initial
	begin : Init_mMuxLeftData_W_WDATA
		for (mMuxLeftData_W_WDATA_i = 0; mMuxLeftData_W_WDATA_i < 4; mMuxLeftData_W_WDATA_i = mMuxLeftData_W_WDATA_i + 1)
			mMuxLeftData_W_WDATA[mMuxLeftData_W_WDATA_i] = 0;
	end
	reg [137 : 0] mOutLeftData [0 : 4];
	integer mOutLeftData_i;
	initial
	begin : Init_mOutLeftData
		for (mOutLeftData_i = 0; mOutLeftData_i < 5; mOutLeftData_i = mOutLeftData_i + 1)
			mOutLeftData[mOutLeftData_i] = 0;
	end
	reg [20 : 0] mOutRightData [0 : 0];
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
			mMuxLeftData_B_BREADY = Inputs_iLeft[Inputs_iLeftAddr][137];
			mMuxLeftData_W_WVALID = Inputs_iLeft[Inputs_iLeftAddr][136];
			mMuxLeftData_W_WUSER = Inputs_iLeft[Inputs_iLeftAddr][135:128];
			mMuxLeftData_W_WLAST = Inputs_iLeft[Inputs_iLeftAddr][127];
			mMuxLeftData_W_WSTRB = Inputs_iLeft[Inputs_iLeftAddr][126:123];
			mMuxLeftData_W_WDATA[3] = Inputs_iLeft[Inputs_iLeftAddr][122:115];
			mMuxLeftData_W_WDATA[2] = Inputs_iLeft[Inputs_iLeftAddr][114:107];
			mMuxLeftData_W_WDATA[1] = Inputs_iLeft[Inputs_iLeftAddr][106:99];
			mMuxLeftData_W_WDATA[0] = Inputs_iLeft[Inputs_iLeftAddr][98:91];
			mMuxLeftData_W_WID = Inputs_iLeft[Inputs_iLeftAddr][90:83];
			mMuxLeftData_AW_AWVALID = Inputs_iLeft[Inputs_iLeftAddr][82];
			mMuxLeftData_AW_AWUSER = Inputs_iLeft[Inputs_iLeftAddr][81:74];
			mMuxLeftData_AW_AWREGION = Inputs_iLeft[Inputs_iLeftAddr][73:66];
			mMuxLeftData_AW_AWQOS = Inputs_iLeft[Inputs_iLeftAddr][65:62];
			mMuxLeftData_AW_AWPROT = Inputs_iLeft[Inputs_iLeftAddr][61:59];
			mMuxLeftData_AW_AWCACHE = Inputs_iLeft[Inputs_iLeftAddr][58:55];
			mMuxLeftData_AW_AWLOCK = Inputs_iLeft[Inputs_iLeftAddr][54:53];
			mMuxLeftData_AW_AWBURST = Inputs_iLeft[Inputs_iLeftAddr][52:51];
			mMuxLeftData_AW_AWSIZE = Inputs_iLeft[Inputs_iLeftAddr][50:48];
			mMuxLeftData_AW_AWLEN = Inputs_iLeft[Inputs_iLeftAddr][47:40];
			mMuxLeftData_AW_AWADDR = Inputs_iLeft[Inputs_iLeftAddr][39:8];
			mMuxLeftData_AW_AWID = Inputs_iLeft[Inputs_iLeftAddr][7:0];
		end
		else
		begin
			mMuxLeftData_AW_AWID = mEmptyLeftData_AW_AWID;
			mMuxLeftData_AW_AWADDR = mEmptyLeftData_AW_AWADDR;
			mMuxLeftData_AW_AWLEN = mEmptyLeftData_AW_AWLEN;
			mMuxLeftData_AW_AWSIZE = mEmptyLeftData_AW_AWSIZE;
			mMuxLeftData_AW_AWBURST = mEmptyLeftData_AW_AWBURST;
			mMuxLeftData_AW_AWLOCK = mEmptyLeftData_AW_AWLOCK;
			mMuxLeftData_AW_AWCACHE = mEmptyLeftData_AW_AWCACHE;
			mMuxLeftData_AW_AWPROT = mEmptyLeftData_AW_AWPROT;
			mMuxLeftData_AW_AWQOS = mEmptyLeftData_AW_AWQOS;
			mMuxLeftData_AW_AWREGION = mEmptyLeftData_AW_AWREGION;
			mMuxLeftData_AW_AWUSER = mEmptyLeftData_AW_AWUSER;
			mMuxLeftData_AW_AWVALID = mEmptyLeftData_AW_AWVALID;
			mMuxLeftData_W_WID = mEmptyLeftData_W_WID;
			mMuxLeftData_W_WDATA[0] = mEmptyLeftData_W_WDATA[0];
			mMuxLeftData_W_WDATA[1] = mEmptyLeftData_W_WDATA[1];
			mMuxLeftData_W_WDATA[2] = mEmptyLeftData_W_WDATA[2];
			mMuxLeftData_W_WDATA[3] = mEmptyLeftData_W_WDATA[3];
			mMuxLeftData_W_WSTRB = mEmptyLeftData_W_WSTRB;
			mMuxLeftData_W_WLAST = mEmptyLeftData_W_WLAST;
			mMuxLeftData_W_WUSER = mEmptyLeftData_W_WUSER;
			mMuxLeftData_W_WVALID = mEmptyLeftData_W_WVALID;
			mMuxLeftData_B_BREADY = mEmptyLeftData_B_BREADY;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_0_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[0][137] = mMuxLeftData_B_BREADY;
			mOutLeftData[0][136] = mMuxLeftData_W_WVALID;
			mOutLeftData[0][135:128] = mMuxLeftData_W_WUSER;
			mOutLeftData[0][127] = mMuxLeftData_W_WLAST;
			mOutLeftData[0][126:123] = mMuxLeftData_W_WSTRB;
			mOutLeftData[0][122:91] = {
				mMuxLeftData_W_WDATA[3],
				mMuxLeftData_W_WDATA[2],
				mMuxLeftData_W_WDATA[1],
				mMuxLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[0][90:83] = mMuxLeftData_W_WID;
			mOutLeftData[0][82] = mMuxLeftData_AW_AWVALID;
			mOutLeftData[0][81:74] = mMuxLeftData_AW_AWUSER;
			mOutLeftData[0][73:66] = mMuxLeftData_AW_AWREGION;
			mOutLeftData[0][65:62] = mMuxLeftData_AW_AWQOS;
			mOutLeftData[0][61:59] = mMuxLeftData_AW_AWPROT;
			mOutLeftData[0][58:55] = mMuxLeftData_AW_AWCACHE;
			mOutLeftData[0][54:53] = mMuxLeftData_AW_AWLOCK;
			mOutLeftData[0][52:51] = mMuxLeftData_AW_AWBURST;
			mOutLeftData[0][50:48] = mMuxLeftData_AW_AWSIZE;
			mOutLeftData[0][47:40] = mMuxLeftData_AW_AWLEN;
			mOutLeftData[0][39:8] = mMuxLeftData_AW_AWADDR;
			mOutLeftData[0][7:0] = mMuxLeftData_AW_AWID;
		end
		else
		begin
			mOutLeftData[0][137] = mEmptyLeftData_B_BREADY;
			mOutLeftData[0][136] = mEmptyLeftData_W_WVALID;
			mOutLeftData[0][135:128] = mEmptyLeftData_W_WUSER;
			mOutLeftData[0][127] = mEmptyLeftData_W_WLAST;
			mOutLeftData[0][126:123] = mEmptyLeftData_W_WSTRB;
			mOutLeftData[0][122:91] = {
				mEmptyLeftData_W_WDATA[3],
				mEmptyLeftData_W_WDATA[2],
				mEmptyLeftData_W_WDATA[1],
				mEmptyLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[0][90:83] = mEmptyLeftData_W_WID;
			mOutLeftData[0][82] = mEmptyLeftData_AW_AWVALID;
			mOutLeftData[0][81:74] = mEmptyLeftData_AW_AWUSER;
			mOutLeftData[0][73:66] = mEmptyLeftData_AW_AWREGION;
			mOutLeftData[0][65:62] = mEmptyLeftData_AW_AWQOS;
			mOutLeftData[0][61:59] = mEmptyLeftData_AW_AWPROT;
			mOutLeftData[0][58:55] = mEmptyLeftData_AW_AWCACHE;
			mOutLeftData[0][54:53] = mEmptyLeftData_AW_AWLOCK;
			mOutLeftData[0][52:51] = mEmptyLeftData_AW_AWBURST;
			mOutLeftData[0][50:48] = mEmptyLeftData_AW_AWSIZE;
			mOutLeftData[0][47:40] = mEmptyLeftData_AW_AWLEN;
			mOutLeftData[0][39:8] = mEmptyLeftData_AW_AWADDR;
			mOutLeftData[0][7:0] = mEmptyLeftData_AW_AWID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_1_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[1][137] = mMuxLeftData_B_BREADY;
			mOutLeftData[1][136] = mMuxLeftData_W_WVALID;
			mOutLeftData[1][135:128] = mMuxLeftData_W_WUSER;
			mOutLeftData[1][127] = mMuxLeftData_W_WLAST;
			mOutLeftData[1][126:123] = mMuxLeftData_W_WSTRB;
			mOutLeftData[1][122:91] = {
				mMuxLeftData_W_WDATA[3],
				mMuxLeftData_W_WDATA[2],
				mMuxLeftData_W_WDATA[1],
				mMuxLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[1][90:83] = mMuxLeftData_W_WID;
			mOutLeftData[1][82] = mMuxLeftData_AW_AWVALID;
			mOutLeftData[1][81:74] = mMuxLeftData_AW_AWUSER;
			mOutLeftData[1][73:66] = mMuxLeftData_AW_AWREGION;
			mOutLeftData[1][65:62] = mMuxLeftData_AW_AWQOS;
			mOutLeftData[1][61:59] = mMuxLeftData_AW_AWPROT;
			mOutLeftData[1][58:55] = mMuxLeftData_AW_AWCACHE;
			mOutLeftData[1][54:53] = mMuxLeftData_AW_AWLOCK;
			mOutLeftData[1][52:51] = mMuxLeftData_AW_AWBURST;
			mOutLeftData[1][50:48] = mMuxLeftData_AW_AWSIZE;
			mOutLeftData[1][47:40] = mMuxLeftData_AW_AWLEN;
			mOutLeftData[1][39:8] = mMuxLeftData_AW_AWADDR;
			mOutLeftData[1][7:0] = mMuxLeftData_AW_AWID;
		end
		else
		begin
			mOutLeftData[1][137] = mEmptyLeftData_B_BREADY;
			mOutLeftData[1][136] = mEmptyLeftData_W_WVALID;
			mOutLeftData[1][135:128] = mEmptyLeftData_W_WUSER;
			mOutLeftData[1][127] = mEmptyLeftData_W_WLAST;
			mOutLeftData[1][126:123] = mEmptyLeftData_W_WSTRB;
			mOutLeftData[1][122:91] = {
				mEmptyLeftData_W_WDATA[3],
				mEmptyLeftData_W_WDATA[2],
				mEmptyLeftData_W_WDATA[1],
				mEmptyLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[1][90:83] = mEmptyLeftData_W_WID;
			mOutLeftData[1][82] = mEmptyLeftData_AW_AWVALID;
			mOutLeftData[1][81:74] = mEmptyLeftData_AW_AWUSER;
			mOutLeftData[1][73:66] = mEmptyLeftData_AW_AWREGION;
			mOutLeftData[1][65:62] = mEmptyLeftData_AW_AWQOS;
			mOutLeftData[1][61:59] = mEmptyLeftData_AW_AWPROT;
			mOutLeftData[1][58:55] = mEmptyLeftData_AW_AWCACHE;
			mOutLeftData[1][54:53] = mEmptyLeftData_AW_AWLOCK;
			mOutLeftData[1][52:51] = mEmptyLeftData_AW_AWBURST;
			mOutLeftData[1][50:48] = mEmptyLeftData_AW_AWSIZE;
			mOutLeftData[1][47:40] = mEmptyLeftData_AW_AWLEN;
			mOutLeftData[1][39:8] = mEmptyLeftData_AW_AWADDR;
			mOutLeftData[1][7:0] = mEmptyLeftData_AW_AWID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_2_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[2][137] = mMuxLeftData_B_BREADY;
			mOutLeftData[2][136] = mMuxLeftData_W_WVALID;
			mOutLeftData[2][135:128] = mMuxLeftData_W_WUSER;
			mOutLeftData[2][127] = mMuxLeftData_W_WLAST;
			mOutLeftData[2][126:123] = mMuxLeftData_W_WSTRB;
			mOutLeftData[2][122:91] = {
				mMuxLeftData_W_WDATA[3],
				mMuxLeftData_W_WDATA[2],
				mMuxLeftData_W_WDATA[1],
				mMuxLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[2][90:83] = mMuxLeftData_W_WID;
			mOutLeftData[2][82] = mMuxLeftData_AW_AWVALID;
			mOutLeftData[2][81:74] = mMuxLeftData_AW_AWUSER;
			mOutLeftData[2][73:66] = mMuxLeftData_AW_AWREGION;
			mOutLeftData[2][65:62] = mMuxLeftData_AW_AWQOS;
			mOutLeftData[2][61:59] = mMuxLeftData_AW_AWPROT;
			mOutLeftData[2][58:55] = mMuxLeftData_AW_AWCACHE;
			mOutLeftData[2][54:53] = mMuxLeftData_AW_AWLOCK;
			mOutLeftData[2][52:51] = mMuxLeftData_AW_AWBURST;
			mOutLeftData[2][50:48] = mMuxLeftData_AW_AWSIZE;
			mOutLeftData[2][47:40] = mMuxLeftData_AW_AWLEN;
			mOutLeftData[2][39:8] = mMuxLeftData_AW_AWADDR;
			mOutLeftData[2][7:0] = mMuxLeftData_AW_AWID;
		end
		else
		begin
			mOutLeftData[2][137] = mEmptyLeftData_B_BREADY;
			mOutLeftData[2][136] = mEmptyLeftData_W_WVALID;
			mOutLeftData[2][135:128] = mEmptyLeftData_W_WUSER;
			mOutLeftData[2][127] = mEmptyLeftData_W_WLAST;
			mOutLeftData[2][126:123] = mEmptyLeftData_W_WSTRB;
			mOutLeftData[2][122:91] = {
				mEmptyLeftData_W_WDATA[3],
				mEmptyLeftData_W_WDATA[2],
				mEmptyLeftData_W_WDATA[1],
				mEmptyLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[2][90:83] = mEmptyLeftData_W_WID;
			mOutLeftData[2][82] = mEmptyLeftData_AW_AWVALID;
			mOutLeftData[2][81:74] = mEmptyLeftData_AW_AWUSER;
			mOutLeftData[2][73:66] = mEmptyLeftData_AW_AWREGION;
			mOutLeftData[2][65:62] = mEmptyLeftData_AW_AWQOS;
			mOutLeftData[2][61:59] = mEmptyLeftData_AW_AWPROT;
			mOutLeftData[2][58:55] = mEmptyLeftData_AW_AWCACHE;
			mOutLeftData[2][54:53] = mEmptyLeftData_AW_AWLOCK;
			mOutLeftData[2][52:51] = mEmptyLeftData_AW_AWBURST;
			mOutLeftData[2][50:48] = mEmptyLeftData_AW_AWSIZE;
			mOutLeftData[2][47:40] = mEmptyLeftData_AW_AWLEN;
			mOutLeftData[2][39:8] = mEmptyLeftData_AW_AWADDR;
			mOutLeftData[2][7:0] = mEmptyLeftData_AW_AWID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_3_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[3][137] = mMuxLeftData_B_BREADY;
			mOutLeftData[3][136] = mMuxLeftData_W_WVALID;
			mOutLeftData[3][135:128] = mMuxLeftData_W_WUSER;
			mOutLeftData[3][127] = mMuxLeftData_W_WLAST;
			mOutLeftData[3][126:123] = mMuxLeftData_W_WSTRB;
			mOutLeftData[3][122:91] = {
				mMuxLeftData_W_WDATA[3],
				mMuxLeftData_W_WDATA[2],
				mMuxLeftData_W_WDATA[1],
				mMuxLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[3][90:83] = mMuxLeftData_W_WID;
			mOutLeftData[3][82] = mMuxLeftData_AW_AWVALID;
			mOutLeftData[3][81:74] = mMuxLeftData_AW_AWUSER;
			mOutLeftData[3][73:66] = mMuxLeftData_AW_AWREGION;
			mOutLeftData[3][65:62] = mMuxLeftData_AW_AWQOS;
			mOutLeftData[3][61:59] = mMuxLeftData_AW_AWPROT;
			mOutLeftData[3][58:55] = mMuxLeftData_AW_AWCACHE;
			mOutLeftData[3][54:53] = mMuxLeftData_AW_AWLOCK;
			mOutLeftData[3][52:51] = mMuxLeftData_AW_AWBURST;
			mOutLeftData[3][50:48] = mMuxLeftData_AW_AWSIZE;
			mOutLeftData[3][47:40] = mMuxLeftData_AW_AWLEN;
			mOutLeftData[3][39:8] = mMuxLeftData_AW_AWADDR;
			mOutLeftData[3][7:0] = mMuxLeftData_AW_AWID;
		end
		else
		begin
			mOutLeftData[3][137] = mEmptyLeftData_B_BREADY;
			mOutLeftData[3][136] = mEmptyLeftData_W_WVALID;
			mOutLeftData[3][135:128] = mEmptyLeftData_W_WUSER;
			mOutLeftData[3][127] = mEmptyLeftData_W_WLAST;
			mOutLeftData[3][126:123] = mEmptyLeftData_W_WSTRB;
			mOutLeftData[3][122:91] = {
				mEmptyLeftData_W_WDATA[3],
				mEmptyLeftData_W_WDATA[2],
				mEmptyLeftData_W_WDATA[1],
				mEmptyLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[3][90:83] = mEmptyLeftData_W_WID;
			mOutLeftData[3][82] = mEmptyLeftData_AW_AWVALID;
			mOutLeftData[3][81:74] = mEmptyLeftData_AW_AWUSER;
			mOutLeftData[3][73:66] = mEmptyLeftData_AW_AWREGION;
			mOutLeftData[3][65:62] = mEmptyLeftData_AW_AWQOS;
			mOutLeftData[3][61:59] = mEmptyLeftData_AW_AWPROT;
			mOutLeftData[3][58:55] = mEmptyLeftData_AW_AWCACHE;
			mOutLeftData[3][54:53] = mEmptyLeftData_AW_AWLOCK;
			mOutLeftData[3][52:51] = mEmptyLeftData_AW_AWBURST;
			mOutLeftData[3][50:48] = mEmptyLeftData_AW_AWSIZE;
			mOutLeftData[3][47:40] = mEmptyLeftData_AW_AWLEN;
			mOutLeftData[3][39:8] = mEmptyLeftData_AW_AWADDR;
			mOutLeftData[3][7:0] = mEmptyLeftData_AW_AWID;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L94F13L104T14_4_FullDuplexMuxModule_L96F21T78_Expr == 1))
		begin
			mOutLeftData[4][137] = mMuxLeftData_B_BREADY;
			mOutLeftData[4][136] = mMuxLeftData_W_WVALID;
			mOutLeftData[4][135:128] = mMuxLeftData_W_WUSER;
			mOutLeftData[4][127] = mMuxLeftData_W_WLAST;
			mOutLeftData[4][126:123] = mMuxLeftData_W_WSTRB;
			mOutLeftData[4][122:91] = {
				mMuxLeftData_W_WDATA[3],
				mMuxLeftData_W_WDATA[2],
				mMuxLeftData_W_WDATA[1],
				mMuxLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[4][90:83] = mMuxLeftData_W_WID;
			mOutLeftData[4][82] = mMuxLeftData_AW_AWVALID;
			mOutLeftData[4][81:74] = mMuxLeftData_AW_AWUSER;
			mOutLeftData[4][73:66] = mMuxLeftData_AW_AWREGION;
			mOutLeftData[4][65:62] = mMuxLeftData_AW_AWQOS;
			mOutLeftData[4][61:59] = mMuxLeftData_AW_AWPROT;
			mOutLeftData[4][58:55] = mMuxLeftData_AW_AWCACHE;
			mOutLeftData[4][54:53] = mMuxLeftData_AW_AWLOCK;
			mOutLeftData[4][52:51] = mMuxLeftData_AW_AWBURST;
			mOutLeftData[4][50:48] = mMuxLeftData_AW_AWSIZE;
			mOutLeftData[4][47:40] = mMuxLeftData_AW_AWLEN;
			mOutLeftData[4][39:8] = mMuxLeftData_AW_AWADDR;
			mOutLeftData[4][7:0] = mMuxLeftData_AW_AWID;
		end
		else
		begin
			mOutLeftData[4][137] = mEmptyLeftData_B_BREADY;
			mOutLeftData[4][136] = mEmptyLeftData_W_WVALID;
			mOutLeftData[4][135:128] = mEmptyLeftData_W_WUSER;
			mOutLeftData[4][127] = mEmptyLeftData_W_WLAST;
			mOutLeftData[4][126:123] = mEmptyLeftData_W_WSTRB;
			mOutLeftData[4][122:91] = {
				mEmptyLeftData_W_WDATA[3],
				mEmptyLeftData_W_WDATA[2],
				mEmptyLeftData_W_WDATA[1],
				mEmptyLeftData_W_WDATA[0]
			}
			;
			mOutLeftData[4][90:83] = mEmptyLeftData_W_WID;
			mOutLeftData[4][82] = mEmptyLeftData_AW_AWVALID;
			mOutLeftData[4][81:74] = mEmptyLeftData_AW_AWUSER;
			mOutLeftData[4][73:66] = mEmptyLeftData_AW_AWREGION;
			mOutLeftData[4][65:62] = mEmptyLeftData_AW_AWQOS;
			mOutLeftData[4][61:59] = mEmptyLeftData_AW_AWPROT;
			mOutLeftData[4][58:55] = mEmptyLeftData_AW_AWCACHE;
			mOutLeftData[4][54:53] = mEmptyLeftData_AW_AWLOCK;
			mOutLeftData[4][52:51] = mEmptyLeftData_AW_AWBURST;
			mOutLeftData[4][50:48] = mEmptyLeftData_AW_AWSIZE;
			mOutLeftData[4][47:40] = mEmptyLeftData_AW_AWLEN;
			mOutLeftData[4][39:8] = mEmptyLeftData_AW_AWADDR;
			mOutLeftData[4][7:0] = mEmptyLeftData_AW_AWID;
		end
	end
	always @ (*)
	begin
		if ((Inputs_iRightAddrValid == 1))
		begin
			mMuxRightData_W_WREADY = Inputs_iRight[Inputs_iRightAddr][20];
			mMuxRightData_B_BVALID = Inputs_iRight[Inputs_iRightAddr][19];
			mMuxRightData_B_BUSER = Inputs_iRight[Inputs_iRightAddr][18:11];
			mMuxRightData_B_BRESP = Inputs_iRight[Inputs_iRightAddr][10:9];
			mMuxRightData_B_BID = Inputs_iRight[Inputs_iRightAddr][8:1];
			mMuxRightData_AW_AWREADY = Inputs_iRight[Inputs_iRightAddr][0];
		end
		else
		begin
			mMuxRightData_AW_AWREADY = mEmptyRightData_AW_AWREADY;
			mMuxRightData_B_BID = mEmptyRightData_B_BID;
			mMuxRightData_B_BRESP = mEmptyRightData_B_BRESP;
			mMuxRightData_B_BUSER = mEmptyRightData_B_BUSER;
			mMuxRightData_B_BVALID = mEmptyRightData_B_BVALID;
			mMuxRightData_W_WREADY = mEmptyRightData_W_WREADY;
		end
	end
	always @ (*)
	begin
		if ((FullDuplexMuxModule_L118F13L128T14_0_FullDuplexMuxModule_L120F21T75_Expr == 1))
		begin
			mOutRightData[0][20] = mMuxRightData_W_WREADY;
			mOutRightData[0][19] = mMuxRightData_B_BVALID;
			mOutRightData[0][18:11] = mMuxRightData_B_BUSER;
			mOutRightData[0][10:9] = mMuxRightData_B_BRESP;
			mOutRightData[0][8:1] = mMuxRightData_B_BID;
			mOutRightData[0][0] = mMuxRightData_AW_AWREADY;
		end
		else
		begin
			mOutRightData[0][20] = mEmptyRightData_W_WREADY;
			mOutRightData[0][19] = mEmptyRightData_B_BVALID;
			mOutRightData[0][18:11] = mEmptyRightData_B_BUSER;
			mOutRightData[0][10:9] = mEmptyRightData_B_BRESP;
			mOutRightData[0][8:1] = mEmptyRightData_B_BID;
			mOutRightData[0][0] = mEmptyRightData_AW_AWREADY;
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
	assign oMuxLeftData[137] = mMuxLeftData_B_BREADY;
	assign oMuxLeftData[136] = mMuxLeftData_W_WVALID;
	assign oMuxLeftData[135:128] = mMuxLeftData_W_WUSER;
	assign oMuxLeftData[127] = mMuxLeftData_W_WLAST;
	assign oMuxLeftData[126:123] = mMuxLeftData_W_WSTRB;
	assign oMuxLeftData[122:115] = mMuxLeftData_W_WDATA[3];
	assign oMuxLeftData[114:107] = mMuxLeftData_W_WDATA[2];
	assign oMuxLeftData[106:99] = mMuxLeftData_W_WDATA[1];
	assign oMuxLeftData[98:91] = mMuxLeftData_W_WDATA[0];
	assign oMuxLeftData[90:83] = mMuxLeftData_W_WID;
	assign oMuxLeftData[82] = mMuxLeftData_AW_AWVALID;
	assign oMuxLeftData[81:74] = mMuxLeftData_AW_AWUSER;
	assign oMuxLeftData[73:66] = mMuxLeftData_AW_AWREGION;
	assign oMuxLeftData[65:62] = mMuxLeftData_AW_AWQOS;
	assign oMuxLeftData[61:59] = mMuxLeftData_AW_AWPROT;
	assign oMuxLeftData[58:55] = mMuxLeftData_AW_AWCACHE;
	assign oMuxLeftData[54:53] = mMuxLeftData_AW_AWLOCK;
	assign oMuxLeftData[52:51] = mMuxLeftData_AW_AWBURST;
	assign oMuxLeftData[50:48] = mMuxLeftData_AW_AWSIZE;
	assign oMuxLeftData[47:40] = mMuxLeftData_AW_AWLEN;
	assign oMuxLeftData[39:8] = mMuxLeftData_AW_AWADDR;
	assign oMuxLeftData[7:0] = mMuxLeftData_AW_AWID;
	assign oMuxRightData[20] = mMuxRightData_W_WREADY;
	assign oMuxRightData[19] = mMuxRightData_B_BVALID;
	assign oMuxRightData[18:11] = mMuxRightData_B_BUSER;
	assign oMuxRightData[10:9] = mMuxRightData_B_BRESP;
	assign oMuxRightData[8:1] = mMuxRightData_B_BID;
	assign oMuxRightData[0] = mMuxRightData_AW_AWREADY;
	assign oRight0 = mOutRightData[0];
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
