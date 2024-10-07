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
// System configuration name is AXISoCQuadCoreModule_TopLevel_programmerCPU2Gateway, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_programmerCPU2Gateway
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire [221:0] iM2S,
	input wire [73:0] iS2M,
	output wire [221:0] oM2S,
	output wire [73:0] oS2M
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire signed [6: 0] axiSize = 7'b0100000;
	wire AXI4GatewayModule_L41F47T52_Expr = 1'b0;
	wire AXI4GatewayModule_L47F47T52_Expr = 1'b0;
	wire [7: 0] Inputs_iM2S_R_AR_ARID;
	wire [31: 0] Inputs_iM2S_R_AR_ARADDR;
	wire [7: 0] Inputs_iM2S_R_AR_ARLEN;
	wire [2: 0] Inputs_iM2S_R_AR_ARSIZE;
	wire [1: 0] Inputs_iM2S_R_AR_ARBURST;
	wire [1: 0] Inputs_iM2S_R_AR_ARLOCK;
	wire [3: 0] Inputs_iM2S_R_AR_ARCACHE;
	wire [2: 0] Inputs_iM2S_R_AR_ARPROT;
	wire [3: 0] Inputs_iM2S_R_AR_ARQOS;
	wire [7: 0] Inputs_iM2S_R_AR_ARREGION;
	wire [7: 0] Inputs_iM2S_R_AR_ARUSER;
	wire Inputs_iM2S_R_AR_ARVALID;
	wire Inputs_iM2S_R_R_RREADY;
	wire [7: 0] Inputs_iM2S_W_AW_AWID;
	wire [31: 0] Inputs_iM2S_W_AW_AWADDR;
	wire [7: 0] Inputs_iM2S_W_AW_AWLEN;
	wire [2: 0] Inputs_iM2S_W_AW_AWSIZE;
	wire [1: 0] Inputs_iM2S_W_AW_AWBURST;
	wire [1: 0] Inputs_iM2S_W_AW_AWLOCK;
	wire [3: 0] Inputs_iM2S_W_AW_AWCACHE;
	wire [2: 0] Inputs_iM2S_W_AW_AWPROT;
	wire [3: 0] Inputs_iM2S_W_AW_AWQOS;
	wire [7: 0] Inputs_iM2S_W_AW_AWREGION;
	wire [7: 0] Inputs_iM2S_W_AW_AWUSER;
	wire Inputs_iM2S_W_AW_AWVALID;
	wire [7: 0] Inputs_iM2S_W_W_WID;
	wire [3: 0] Inputs_iM2S_W_W_WSTRB;
	wire Inputs_iM2S_W_W_WLAST;
	wire [7: 0] Inputs_iM2S_W_W_WUSER;
	wire Inputs_iM2S_W_W_WVALID;
	wire Inputs_iM2S_W_B_BREADY;
	wire Inputs_iS2M_R_AR_ARREADY;
	wire [7: 0] Inputs_iS2M_R_R_RID;
	wire [1: 0] Inputs_iS2M_R_R_RRESP;
	wire Inputs_iS2M_R_R_RLAST;
	wire [7: 0] Inputs_iS2M_R_R_RUSER;
	wire Inputs_iS2M_R_R_RVALID;
	wire Inputs_iS2M_W_AW_AWREADY;
	wire [7: 0] Inputs_iS2M_W_B_BID;
	wire [1: 0] Inputs_iS2M_W_B_BRESP;
	wire [7: 0] Inputs_iS2M_W_B_BUSER;
	wire Inputs_iS2M_W_B_BVALID;
	wire Inputs_iS2M_W_W_WREADY;
	wire [31: 0] readAddress_iMapAddress;
	wire [31: 0] readAddress_iOriginalAddress;
	wire [31: 0] readAddress_oAddress;
	wire [31: 0] writeAddress_iMapAddress;
	wire [31: 0] writeAddress_iOriginalAddress;
	wire [31: 0] writeAddress_oAddress;
	wire [63: 0] AXI4GatewayModule_L38F40L42T14_Object;
	wire [31: 0] AXI4GatewayModule_L41F31T70_Resize;
	wire [63: 0] AXI4GatewayModule_L44F41L48T14_Object;
	wire [31: 0] AXI4GatewayModule_L47F31T70_Resize;
	wire [31: 0] readAddress_iMapAddress_readAddress_iMapAddress_HardLink;
	wire [31: 0] readAddress_iOriginalAddress_readAddress_iOriginalAddress_HardLink;
	wire [31: 0] readAddress_oAddress_readAddress_oAddress_HardLink;
	wire [31: 0] writeAddress_iMapAddress_writeAddress_iMapAddress_HardLink;
	wire [31: 0] writeAddress_iOriginalAddress_writeAddress_iOriginalAddress_HardLink;
	wire [31: 0] writeAddress_oAddress_writeAddress_oAddress_HardLink;
	wire [7 : 0] Inputs_iM2S_W_W_WDATA [0 : 3];
	wire [7 : 0] Inputs_iS2M_R_R_RDATA [0 : 3];
	AXISoCQuadCoreModule_TopLevel_programmerCPU2Gateway_readAddress
	AXISoCQuadCoreModule_TopLevel_programmerCPU2Gateway_readAddress
	(
		// [BEGIN USER MAP FOR readAddress]
		// [END USER MAP FOR readAddress]
		.iMapAddress (readAddress_iMapAddress_readAddress_iMapAddress_HardLink),
		.iOriginalAddress (readAddress_iOriginalAddress_readAddress_iOriginalAddress_HardLink),
		.oAddress (readAddress_oAddress_readAddress_oAddress_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_programmerCPU2Gateway_writeAddress
	AXISoCQuadCoreModule_TopLevel_programmerCPU2Gateway_writeAddress
	(
		// [BEGIN USER MAP FOR writeAddress]
		// [END USER MAP FOR writeAddress]
		.iMapAddress (writeAddress_iMapAddress_writeAddress_iMapAddress_HardLink),
		.iOriginalAddress (writeAddress_iOriginalAddress_writeAddress_iOriginalAddress_HardLink),
		.oAddress (writeAddress_oAddress_writeAddress_oAddress_HardLink)
	);
	assign Inputs_iM2S_W_B_BREADY = iM2S[221];
	assign Inputs_iM2S_W_W_WVALID = iM2S[220];
	assign Inputs_iM2S_W_W_WUSER = iM2S[219:212];
	assign Inputs_iM2S_W_W_WLAST = iM2S[211];
	assign Inputs_iM2S_W_W_WSTRB = iM2S[210:207];
	assign Inputs_iM2S_W_W_WDATA[3] = iM2S[206:199];
	assign Inputs_iM2S_W_W_WDATA[2] = iM2S[198:191];
	assign Inputs_iM2S_W_W_WDATA[1] = iM2S[190:183];
	assign Inputs_iM2S_W_W_WDATA[0] = iM2S[182:175];
	assign Inputs_iM2S_W_W_WID = iM2S[174:167];
	assign Inputs_iM2S_W_AW_AWVALID = iM2S[166];
	assign Inputs_iM2S_W_AW_AWUSER = iM2S[165:158];
	assign Inputs_iM2S_W_AW_AWREGION = iM2S[157:150];
	assign Inputs_iM2S_W_AW_AWQOS = iM2S[149:146];
	assign Inputs_iM2S_W_AW_AWPROT = iM2S[145:143];
	assign Inputs_iM2S_W_AW_AWCACHE = iM2S[142:139];
	assign Inputs_iM2S_W_AW_AWLOCK = iM2S[138:137];
	assign Inputs_iM2S_W_AW_AWBURST = iM2S[136:135];
	assign Inputs_iM2S_W_AW_AWSIZE = iM2S[134:132];
	assign Inputs_iM2S_W_AW_AWLEN = iM2S[131:124];
	assign Inputs_iM2S_W_AW_AWADDR = iM2S[123:92];
	assign Inputs_iM2S_W_AW_AWID = iM2S[91:84];
	assign Inputs_iM2S_R_R_RREADY = iM2S[83];
	assign Inputs_iM2S_R_AR_ARVALID = iM2S[82];
	assign Inputs_iM2S_R_AR_ARUSER = iM2S[81:74];
	assign Inputs_iM2S_R_AR_ARREGION = iM2S[73:66];
	assign Inputs_iM2S_R_AR_ARQOS = iM2S[65:62];
	assign Inputs_iM2S_R_AR_ARPROT = iM2S[61:59];
	assign Inputs_iM2S_R_AR_ARCACHE = iM2S[58:55];
	assign Inputs_iM2S_R_AR_ARLOCK = iM2S[54:53];
	assign Inputs_iM2S_R_AR_ARBURST = iM2S[52:51];
	assign Inputs_iM2S_R_AR_ARSIZE = iM2S[50:48];
	assign Inputs_iM2S_R_AR_ARLEN = iM2S[47:40];
	assign Inputs_iM2S_R_AR_ARADDR = iM2S[39:8];
	assign Inputs_iM2S_R_AR_ARID = iM2S[7:0];
	assign Inputs_iS2M_W_W_WREADY = iS2M[73];
	assign Inputs_iS2M_W_B_BVALID = iS2M[72];
	assign Inputs_iS2M_W_B_BUSER = iS2M[71:64];
	assign Inputs_iS2M_W_B_BRESP = iS2M[63:62];
	assign Inputs_iS2M_W_B_BID = iS2M[61:54];
	assign Inputs_iS2M_W_AW_AWREADY = iS2M[53];
	assign Inputs_iS2M_R_R_RVALID = iS2M[52];
	assign Inputs_iS2M_R_R_RUSER = iS2M[51:44];
	assign Inputs_iS2M_R_R_RLAST = iS2M[43];
	assign Inputs_iS2M_R_R_RRESP = iS2M[42:41];
	assign Inputs_iS2M_R_R_RDATA[3] = iS2M[40:33];
	assign Inputs_iS2M_R_R_RDATA[2] = iS2M[32:25];
	assign Inputs_iS2M_R_R_RDATA[1] = iS2M[24:17];
	assign Inputs_iS2M_R_R_RDATA[0] = iS2M[16:9];
	assign Inputs_iS2M_R_R_RID = iS2M[8:1];
	assign Inputs_iS2M_R_AR_ARREADY = iS2M[0];
	assign AXI4GatewayModule_L41F31T70_Resize = {
		{31{1'b0}},
		AXI4GatewayModule_L41F47T52_Expr
	}
	;
	assign AXI4GatewayModule_L38F40L42T14_Object[31:0] = AXI4GatewayModule_L41F31T70_Resize;
	assign AXI4GatewayModule_L38F40L42T14_Object[63:32] = Inputs_iM2S_R_AR_ARADDR;
	assign readAddress_iOriginalAddress = AXI4GatewayModule_L38F40L42T14_Object[63:32];
	assign readAddress_iMapAddress = AXI4GatewayModule_L38F40L42T14_Object[31:0];
	assign AXI4GatewayModule_L47F31T70_Resize = {
		{31{1'b0}},
		AXI4GatewayModule_L47F47T52_Expr
	}
	;
	assign AXI4GatewayModule_L44F41L48T14_Object[31:0] = AXI4GatewayModule_L47F31T70_Resize;
	assign AXI4GatewayModule_L44F41L48T14_Object[63:32] = Inputs_iM2S_W_AW_AWADDR;
	assign writeAddress_iOriginalAddress = AXI4GatewayModule_L44F41L48T14_Object[63:32];
	assign writeAddress_iMapAddress = AXI4GatewayModule_L44F41L48T14_Object[31:0];
	assign oM2S[221] = Inputs_iM2S_W_B_BREADY;
	assign oM2S[220] = Inputs_iM2S_W_W_WVALID;
	assign oM2S[219:212] = Inputs_iM2S_W_W_WUSER;
	assign oM2S[211] = Inputs_iM2S_W_W_WLAST;
	assign oM2S[210:207] = Inputs_iM2S_W_W_WSTRB;
	assign oM2S[206:199] = Inputs_iM2S_W_W_WDATA[3];
	assign oM2S[198:191] = Inputs_iM2S_W_W_WDATA[2];
	assign oM2S[190:183] = Inputs_iM2S_W_W_WDATA[1];
	assign oM2S[182:175] = Inputs_iM2S_W_W_WDATA[0];
	assign oM2S[174:167] = Inputs_iM2S_W_W_WID;
	assign oM2S[166] = Inputs_iM2S_W_AW_AWVALID;
	assign oM2S[165:158] = Inputs_iM2S_W_AW_AWUSER;
	assign oM2S[157:150] = Inputs_iM2S_W_AW_AWREGION;
	assign oM2S[149:146] = Inputs_iM2S_W_AW_AWQOS;
	assign oM2S[145:143] = Inputs_iM2S_W_AW_AWPROT;
	assign oM2S[142:139] = Inputs_iM2S_W_AW_AWCACHE;
	assign oM2S[138:137] = Inputs_iM2S_W_AW_AWLOCK;
	assign oM2S[136:135] = Inputs_iM2S_W_AW_AWBURST;
	assign oM2S[134:132] = Inputs_iM2S_W_AW_AWSIZE;
	assign oM2S[131:124] = Inputs_iM2S_W_AW_AWLEN;
	assign oM2S[123:92] = writeAddress_oAddress;
	assign oM2S[91:84] = Inputs_iM2S_W_AW_AWID;
	assign oM2S[83] = Inputs_iM2S_R_R_RREADY;
	assign oM2S[82] = Inputs_iM2S_R_AR_ARVALID;
	assign oM2S[81:74] = Inputs_iM2S_R_AR_ARUSER;
	assign oM2S[73:66] = Inputs_iM2S_R_AR_ARREGION;
	assign oM2S[65:62] = Inputs_iM2S_R_AR_ARQOS;
	assign oM2S[61:59] = Inputs_iM2S_R_AR_ARPROT;
	assign oM2S[58:55] = Inputs_iM2S_R_AR_ARCACHE;
	assign oM2S[54:53] = Inputs_iM2S_R_AR_ARLOCK;
	assign oM2S[52:51] = Inputs_iM2S_R_AR_ARBURST;
	assign oM2S[50:48] = Inputs_iM2S_R_AR_ARSIZE;
	assign oM2S[47:40] = Inputs_iM2S_R_AR_ARLEN;
	assign oM2S[39:8] = readAddress_oAddress;
	assign oM2S[7:0] = Inputs_iM2S_R_AR_ARID;
	assign oS2M[73] = Inputs_iS2M_W_W_WREADY;
	assign oS2M[72] = Inputs_iS2M_W_B_BVALID;
	assign oS2M[71:64] = Inputs_iS2M_W_B_BUSER;
	assign oS2M[63:62] = Inputs_iS2M_W_B_BRESP;
	assign oS2M[61:54] = Inputs_iS2M_W_B_BID;
	assign oS2M[53] = Inputs_iS2M_W_AW_AWREADY;
	assign oS2M[52] = Inputs_iS2M_R_R_RVALID;
	assign oS2M[51:44] = Inputs_iS2M_R_R_RUSER;
	assign oS2M[43] = Inputs_iS2M_R_R_RLAST;
	assign oS2M[42:41] = Inputs_iS2M_R_R_RRESP;
	assign oS2M[40:33] = Inputs_iS2M_R_R_RDATA[3];
	assign oS2M[32:25] = Inputs_iS2M_R_R_RDATA[2];
	assign oS2M[24:17] = Inputs_iS2M_R_R_RDATA[1];
	assign oS2M[16:9] = Inputs_iS2M_R_R_RDATA[0];
	assign oS2M[8:1] = Inputs_iS2M_R_R_RID;
	assign oS2M[0] = Inputs_iS2M_R_AR_ARREADY;
	assign readAddress_iMapAddress_readAddress_iMapAddress_HardLink = readAddress_iMapAddress;
	assign readAddress_iOriginalAddress_readAddress_iOriginalAddress_HardLink = readAddress_iOriginalAddress;
	assign readAddress_oAddress = readAddress_oAddress_readAddress_oAddress_HardLink;
	assign writeAddress_iMapAddress_writeAddress_iMapAddress_HardLink = writeAddress_iMapAddress;
	assign writeAddress_iOriginalAddress_writeAddress_iOriginalAddress_HardLink = writeAddress_iOriginalAddress;
	assign writeAddress_oAddress = writeAddress_oAddress_writeAddress_oAddress_HardLink;
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
