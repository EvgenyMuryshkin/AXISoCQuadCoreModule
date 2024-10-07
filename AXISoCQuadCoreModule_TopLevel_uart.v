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
// System configuration name is AXISoCQuadCoreModule_TopLevel_uart, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_uart
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire BoardSignals_Clock,
	input wire BoardSignals_Reset,
	input wire BoardSignals_Running,
	input wire BoardSignals_Starting,
	input wire BoardSignals_Started,
	input wire iEN_RX,
	input wire iEN_TX,
	input wire iRX,
	input wire [221:0] M2S,
	output wire oCE,
	output wire signed [31:0] oRXCounter,
	output wire [7:0] oRXData,
	output wire oRXValid,
	output wire [73:0] oS2M,
	output wire oTransmitting,
	output wire oTX,
	output wire signed [31:0] oTXCounter
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire signed [9: 0] clocksPerBit = 10'b0110110010;
	wire signed [8: 0] halfClocksPerBit = 9'b011011001;
	wire [1: 0] size = 2'b10;
	wire signed [6: 0] sizeBits = 7'b0100000;
	wire AXI4UARTModule_L57F29T33_Expr = 1'b1;
	wire AXI4UARTModule_L59F29T33_Expr = 1'b1;
	wire AXI4UARTModule_L61F28T32_Expr = 1'b1;
	wire AXI4UARTModule_L58F28T32_Expr = 1'b1;
	wire AXI4UARTModule_L60F28T32_Expr = 1'b1;
	wire AXI4UARTModule_L99F94T95_Expr = 1'b0;
	wire Inputs_iEN_RX;
	wire Inputs_iEN_TX;
	wire Inputs_iRX;
	wire [7: 0] Inputs_M2S_R_AR_ARID;
	wire [31: 0] Inputs_M2S_R_AR_ARADDR;
	wire [7: 0] Inputs_M2S_R_AR_ARLEN;
	wire [2: 0] Inputs_M2S_R_AR_ARSIZE;
	wire [1: 0] Inputs_M2S_R_AR_ARBURST;
	wire [1: 0] Inputs_M2S_R_AR_ARLOCK;
	wire [3: 0] Inputs_M2S_R_AR_ARCACHE;
	wire [2: 0] Inputs_M2S_R_AR_ARPROT;
	wire [3: 0] Inputs_M2S_R_AR_ARQOS;
	wire [7: 0] Inputs_M2S_R_AR_ARREGION;
	wire [7: 0] Inputs_M2S_R_AR_ARUSER;
	wire Inputs_M2S_R_AR_ARVALID;
	wire Inputs_M2S_R_R_RREADY;
	wire [7: 0] Inputs_M2S_W_AW_AWID;
	wire [31: 0] Inputs_M2S_W_AW_AWADDR;
	wire [7: 0] Inputs_M2S_W_AW_AWLEN;
	wire [2: 0] Inputs_M2S_W_AW_AWSIZE;
	wire [1: 0] Inputs_M2S_W_AW_AWBURST;
	wire [1: 0] Inputs_M2S_W_AW_AWLOCK;
	wire [3: 0] Inputs_M2S_W_AW_AWCACHE;
	wire [2: 0] Inputs_M2S_W_AW_AWPROT;
	wire [3: 0] Inputs_M2S_W_AW_AWQOS;
	wire [7: 0] Inputs_M2S_W_AW_AWREGION;
	wire [7: 0] Inputs_M2S_W_AW_AWUSER;
	wire Inputs_M2S_W_AW_AWVALID;
	wire [7: 0] Inputs_M2S_W_W_WID;
	wire [3: 0] Inputs_M2S_W_W_WSTRB;
	wire Inputs_M2S_W_W_WLAST;
	wire [7: 0] Inputs_M2S_W_W_WUSER;
	wire Inputs_M2S_W_W_WVALID;
	wire Inputs_M2S_W_B_BREADY;
	wire [1: 0] byteAddr;
	wire [31: 0] rdata;
	wire axiSlave_inARREADY;
	wire axiSlave_inAWREADY;
	wire axiSlave_inBVALID;
	wire axiSlave_inRVALID;
	wire axiSlave_inWREADY;
	wire [221: 0] axiSlave_M2S;
	wire [31: 0] axiSlave_outARADDR;
	wire axiSlave_outARREADYConfirming;
	wire axiSlave_outARVALID;
	wire [31: 0] axiSlave_outAWADDR;
	wire axiSlave_outAWREADYConfirming;
	wire axiSlave_outAWVALID;
	wire axiSlave_outReadTXCompleting;
	wire axiSlave_outWREADYConfirming;
	wire axiSlave_outWriteTXCompleting;
	wire [3: 0] axiSlave_outWSTRB;
	wire axiSlave_outWVALID;
	wire [73: 0] axiSlave_S2M;
	wire receiverFIFO_iRE;
	wire [7: 0] receiverFIFO_iWData;
	wire receiverFIFO_iWE;
	wire receiverFIFO_oIsEmpty;
	wire receiverFIFO_oIsFull;
	wire receiverFIFO_oRACK;
	wire [7: 0] receiverFIFO_oRData;
	wire [7: 0] receiverFIFO_oRRawData;
	wire receiverFIFO_oRValid;
	wire receiverFIFO_oWACK;
	wire transmitterFIFO_iRE;
	wire [7: 0] transmitterFIFO_iWData;
	wire transmitterFIFO_iWE;
	wire transmitterFIFO_oIsEmpty;
	wire transmitterFIFO_oIsFull;
	wire transmitterFIFO_oRACK;
	wire [7: 0] transmitterFIFO_oRData;
	wire [7: 0] transmitterFIFO_oRRawData;
	wire transmitterFIFO_oRValid;
	wire transmitterFIFO_oWACK;
	wire uartClockControl_iEN_RX;
	wire uartClockControl_iEN_TX;
	wire uartClockControl_iReceiverValid;
	wire uartClockControl_iRX;
	wire uartClockControl_iTransmitting;
	wire uartClockControl_oRX;
	wire uartClockControl_oRXCE;
	wire signed [31: 0] uartClockControl_oRXCounter;
	wire uartClockControl_oTXCE;
	wire signed [31: 0] uartClockControl_oTXCounter;
	wire uartReceiver_iACK;
	wire uartReceiver_iCE;
	wire uartReceiver_iRX;
	wire uartReceiver_oValid;
	wire [7: 0] uartReceiver_oValue;
	wire uartTransmitter_iCE;
	wire uartTransmitter_iValid;
	wire [7: 0] uartTransmitter_iValue;
	wire uartTransmitter_oCE;
	wire uartTransmitter_oTransmitting;
	wire uartTransmitter_oTX;
	wire uartTransmitter_oWillStartTransmitting;
	wire [1: 0] AXI4UARTModule_L103F33T74_Index;
	reg [7: 0] AXI4UARTModule_L108F43T50_Cast = 8'b00000001;
	reg [7: 0] AXI4UARTModule_L108F53T60_Cast = 8'b00000000;
	wire [7: 0] AXI4UARTModule_L108F17T60_WhenTrue;
	wire [7: 0] AXI4UARTModule_L108F17T60_WhenFalse;
	wire [7: 0] AXI4UARTModule_L108F17T60_Ternary;
	reg [7: 0] AXI4UARTModule_L109F44T51_Cast = 8'b00000001;
	reg [7: 0] AXI4UARTModule_L109F54T61_Cast = 8'b00000000;
	wire [7: 0] AXI4UARTModule_L109F17T61_WhenTrue;
	wire [7: 0] AXI4UARTModule_L109F17T61_WhenFalse;
	wire [7: 0] AXI4UARTModule_L109F17T61_Ternary;
	reg [7: 0] AXI4UARTModule_L110F40T47_Cast = 8'b00000001;
	reg [7: 0] AXI4UARTModule_L110F50T57_Cast = 8'b00000000;
	wire [7: 0] AXI4UARTModule_L110F17T57_WhenTrue;
	wire [7: 0] AXI4UARTModule_L110F17T57_WhenFalse;
	wire [7: 0] AXI4UARTModule_L110F17T57_Ternary;
	wire [31: 0] AXI4UARTModule_L106F16L112T14_Source;
	wire [31: 0] AXI4UARTModule_L106F16L112T32_Resize;
	wire [258: 0] AXI4UARTModule_L54F37L63T14_Object;
	wire [4: 0] AXI4UARTModule_L65F45L72T14_Object;
	wire [2: 0] AXI4UARTModule_L74F41L79T14_Object;
	wire [9: 0] AXI4UARTModule_L81F44L86T14_Object;
	wire [9: 0] AXI4UARTModule_L88F44L93T14_Object;
	wire [9: 0] AXI4UARTModule_L95F41L100T14_Object;
	wire axiSlave_inARREADY_axiSlave_inARREADY_HardLink;
	wire axiSlave_inAWREADY_axiSlave_inAWREADY_HardLink;
	wire axiSlave_inBVALID_axiSlave_inBVALID_HardLink;
	wire [7: 0] axiSlave_inRDATA0_axiSlave_inRDATA_HardLink;
	wire [7: 0] axiSlave_inRDATA1_axiSlave_inRDATA_HardLink;
	wire [7: 0] axiSlave_inRDATA2_axiSlave_inRDATA_HardLink;
	wire [7: 0] axiSlave_inRDATA3_axiSlave_inRDATA_HardLink;
	wire axiSlave_inRVALID_axiSlave_inRVALID_HardLink;
	wire axiSlave_inWREADY_axiSlave_inWREADY_HardLink;
	wire [221: 0] axiSlave_M2S_axiSlave_M2S_HardLink;
	wire [31: 0] axiSlave_outARADDR_axiSlave_outARADDR_HardLink;
	wire axiSlave_outARREADYConfirming_axiSlave_outARREADYConfirming_HardLink;
	wire axiSlave_outARVALID_axiSlave_outARVALID_HardLink;
	wire [31: 0] axiSlave_outAWADDR_axiSlave_outAWADDR_HardLink;
	wire axiSlave_outAWREADYConfirming_axiSlave_outAWREADYConfirming_HardLink;
	wire axiSlave_outAWVALID_axiSlave_outAWVALID_HardLink;
	wire axiSlave_outReadTXCompleting_axiSlave_outReadTXCompleting_HardLink;
	wire [7: 0] axiSlave_outWDATA0_axiSlave_outWDATA_HardLink;
	wire [7: 0] axiSlave_outWDATA1_axiSlave_outWDATA_HardLink;
	wire [7: 0] axiSlave_outWDATA2_axiSlave_outWDATA_HardLink;
	wire [7: 0] axiSlave_outWDATA3_axiSlave_outWDATA_HardLink;
	wire axiSlave_outWREADYConfirming_axiSlave_outWREADYConfirming_HardLink;
	wire axiSlave_outWriteTXCompleting_axiSlave_outWriteTXCompleting_HardLink;
	wire [3: 0] axiSlave_outWSTRB_axiSlave_outWSTRB_HardLink;
	wire axiSlave_outWVALID_axiSlave_outWVALID_HardLink;
	wire [73: 0] axiSlave_S2M_axiSlave_S2M_HardLink;
	wire receiverFIFO_iRE_receiverFIFO_iRE_HardLink;
	wire [7: 0] receiverFIFO_iWData_receiverFIFO_iWData_HardLink;
	wire receiverFIFO_iWE_receiverFIFO_iWE_HardLink;
	wire receiverFIFO_oIsEmpty_receiverFIFO_oIsEmpty_HardLink;
	wire receiverFIFO_oIsFull_receiverFIFO_oIsFull_HardLink;
	wire receiverFIFO_oRACK_receiverFIFO_oRACK_HardLink;
	wire [7: 0] receiverFIFO_oRData_receiverFIFO_oRData_HardLink;
	wire [7: 0] receiverFIFO_oRRawData_receiverFIFO_oRRawData_HardLink;
	wire receiverFIFO_oRValid_receiverFIFO_oRValid_HardLink;
	wire receiverFIFO_oWACK_receiverFIFO_oWACK_HardLink;
	wire transmitterFIFO_iRE_transmitterFIFO_iRE_HardLink;
	wire [7: 0] transmitterFIFO_iWData_transmitterFIFO_iWData_HardLink;
	wire transmitterFIFO_iWE_transmitterFIFO_iWE_HardLink;
	wire transmitterFIFO_oIsEmpty_transmitterFIFO_oIsEmpty_HardLink;
	wire transmitterFIFO_oIsFull_transmitterFIFO_oIsFull_HardLink;
	wire transmitterFIFO_oRACK_transmitterFIFO_oRACK_HardLink;
	wire [7: 0] transmitterFIFO_oRData_transmitterFIFO_oRData_HardLink;
	wire [7: 0] transmitterFIFO_oRRawData_transmitterFIFO_oRRawData_HardLink;
	wire transmitterFIFO_oRValid_transmitterFIFO_oRValid_HardLink;
	wire transmitterFIFO_oWACK_transmitterFIFO_oWACK_HardLink;
	wire uartClockControl_iEN_RX_uartClockControl_iEN_RX_HardLink;
	wire uartClockControl_iEN_TX_uartClockControl_iEN_TX_HardLink;
	wire uartClockControl_iReceiverValid_uartClockControl_iReceiverValid_HardLink;
	wire uartClockControl_iRX_uartClockControl_iRX_HardLink;
	wire uartClockControl_iTransmitting_uartClockControl_iTransmitting_HardLink;
	wire uartClockControl_oRX_uartClockControl_oRX_HardLink;
	wire uartClockControl_oRXCE_uartClockControl_oRXCE_HardLink;
	wire signed [31: 0] uartClockControl_oRXCounter_uartClockControl_oRXCounter_HardLink;
	wire uartClockControl_oTXCE_uartClockControl_oTXCE_HardLink;
	wire signed [31: 0] uartClockControl_oTXCounter_uartClockControl_oTXCounter_HardLink;
	wire uartReceiver_iACK_uartReceiver_iACK_HardLink;
	wire uartReceiver_iCE_uartReceiver_iCE_HardLink;
	wire uartReceiver_iRX_uartReceiver_iRX_HardLink;
	wire uartReceiver_oValid_uartReceiver_oValid_HardLink;
	wire [7: 0] uartReceiver_oValue_uartReceiver_oValue_HardLink;
	wire uartTransmitter_iCE_uartTransmitter_iCE_HardLink;
	wire uartTransmitter_iValid_uartTransmitter_iValid_HardLink;
	wire [7: 0] uartTransmitter_iValue_uartTransmitter_iValue_HardLink;
	wire uartTransmitter_oCE_uartTransmitter_oCE_HardLink;
	wire uartTransmitter_oTransmitting_uartTransmitter_oTransmitting_HardLink;
	wire uartTransmitter_oTX_uartTransmitter_oTX_HardLink;
	wire uartTransmitter_oWillStartTransmitting_uartTransmitter_oWillStartTransmitting_HardLink;
	wire AXI4UARTModule_L78F24T45_Expr;
	wire AXI4UARTModule_L78F24T45_Expr_1;
	wire AXI4UARTModule_L92F23T96_Expr;
	wire AXI4UARTModule_L92F23T96_Expr_1;
	wire AXI4UARTModule_L92F23T96_Expr_2;
	wire AXI4UARTModule_L92F23T53_Expr;
	wire AXI4UARTModule_L92F23T53_Expr_1;
	wire AXI4UARTModule_L92F57T96_Expr;
	wire AXI4UARTModule_L92F57T96_Expr_1;
	wire AXI4UARTModule_L99F23T95_Expr;
	wire AXI4UARTModule_L99F23T95_Expr_1;
	wire AXI4UARTModule_L99F23T95_Expr_2;
	wire AXI4UARTModule_L99F23T78_Expr;
	wire AXI4UARTModule_L99F23T78_Expr_1;
	wire AXI4UARTModule_L99F23T78_Expr_2;
	wire AXI4UARTModule_L99F23T45_Expr;
	wire AXI4UARTModule_L99F23T45_Expr_1;
	wire AXI4UARTModule_L99F82T95_Expr;
	wire signed [2: 0] AXI4UARTModule_L99F82T95_ExprLhs;
	wire signed [2: 0] AXI4UARTModule_L99F82T95_ExprRhs;
	wire [7 : 0] Inputs_M2S_W_W_WDATA [0 : 3];
	wire [7 : 0] axiSlave_inRDATA [0 : 3];
	wire [7 : 0] axiSlave_outWDATA [0 : 3];
	assign AXI4UARTModule_L99F82T95_Expr = AXI4UARTModule_L99F82T95_ExprLhs == AXI4UARTModule_L99F82T95_ExprRhs ? 1'b1 : 1'b0;
	assign AXI4UARTModule_L78F24T45_Expr = ~AXI4UARTModule_L78F24T45_Expr_1;
	assign AXI4UARTModule_L92F23T96_Expr = AXI4UARTModule_L92F23T96_Expr_1 & AXI4UARTModule_L92F23T96_Expr_2;
	assign AXI4UARTModule_L92F23T53_Expr = ~AXI4UARTModule_L92F23T53_Expr_1;
	assign AXI4UARTModule_L92F57T96_Expr = ~AXI4UARTModule_L92F57T96_Expr_1;
	assign AXI4UARTModule_L99F23T95_Expr = AXI4UARTModule_L99F23T95_Expr_1 & AXI4UARTModule_L99F23T95_Expr_2;
	assign AXI4UARTModule_L99F23T78_Expr = AXI4UARTModule_L99F23T78_Expr_1 & AXI4UARTModule_L99F23T78_Expr_2;
	assign AXI4UARTModule_L99F23T45_Expr = ~AXI4UARTModule_L99F23T45_Expr_1;
	AXISoCQuadCoreModule_TopLevel_uart_axiSlave
	AXISoCQuadCoreModule_TopLevel_uart_axiSlave
	(
		// [BEGIN USER MAP FOR axiSlave]
		// [END USER MAP FOR axiSlave]
		.BoardSignals_Clock (BoardSignals_Clock),
		.BoardSignals_Reset (BoardSignals_Reset),
		.BoardSignals_Running (BoardSignals_Running),
		.BoardSignals_Starting (BoardSignals_Starting),
		.BoardSignals_Started (BoardSignals_Started),
		.inARREADY (axiSlave_inARREADY_axiSlave_inARREADY_HardLink),
		.inAWREADY (axiSlave_inAWREADY_axiSlave_inAWREADY_HardLink),
		.inBVALID (axiSlave_inBVALID_axiSlave_inBVALID_HardLink),
		.inRDATA0 (axiSlave_inRDATA0_axiSlave_inRDATA_HardLink),
		.inRDATA1 (axiSlave_inRDATA1_axiSlave_inRDATA_HardLink),
		.inRDATA2 (axiSlave_inRDATA2_axiSlave_inRDATA_HardLink),
		.inRDATA3 (axiSlave_inRDATA3_axiSlave_inRDATA_HardLink),
		.inRVALID (axiSlave_inRVALID_axiSlave_inRVALID_HardLink),
		.inWREADY (axiSlave_inWREADY_axiSlave_inWREADY_HardLink),
		.M2S (axiSlave_M2S_axiSlave_M2S_HardLink),
		.outARADDR (axiSlave_outARADDR_axiSlave_outARADDR_HardLink),
		.outARREADYConfirming (axiSlave_outARREADYConfirming_axiSlave_outARREADYConfirming_HardLink),
		.outARVALID (axiSlave_outARVALID_axiSlave_outARVALID_HardLink),
		.outAWADDR (axiSlave_outAWADDR_axiSlave_outAWADDR_HardLink),
		.outAWREADYConfirming (axiSlave_outAWREADYConfirming_axiSlave_outAWREADYConfirming_HardLink),
		.outAWVALID (axiSlave_outAWVALID_axiSlave_outAWVALID_HardLink),
		.outReadTXCompleting (axiSlave_outReadTXCompleting_axiSlave_outReadTXCompleting_HardLink),
		.outWDATA0 (axiSlave_outWDATA0_axiSlave_outWDATA_HardLink),
		.outWDATA1 (axiSlave_outWDATA1_axiSlave_outWDATA_HardLink),
		.outWDATA2 (axiSlave_outWDATA2_axiSlave_outWDATA_HardLink),
		.outWDATA3 (axiSlave_outWDATA3_axiSlave_outWDATA_HardLink),
		.outWREADYConfirming (axiSlave_outWREADYConfirming_axiSlave_outWREADYConfirming_HardLink),
		.outWriteTXCompleting (axiSlave_outWriteTXCompleting_axiSlave_outWriteTXCompleting_HardLink),
		.outWSTRB (axiSlave_outWSTRB_axiSlave_outWSTRB_HardLink),
		.outWVALID (axiSlave_outWVALID_axiSlave_outWVALID_HardLink),
		.S2M (axiSlave_S2M_axiSlave_S2M_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_uart_receiverFIFO
	AXISoCQuadCoreModule_TopLevel_uart_receiverFIFO
	(
		// [BEGIN USER MAP FOR receiverFIFO]
		// [END USER MAP FOR receiverFIFO]
		.BoardSignals_Clock (BoardSignals_Clock),
		.BoardSignals_Reset (BoardSignals_Reset),
		.BoardSignals_Running (BoardSignals_Running),
		.BoardSignals_Starting (BoardSignals_Starting),
		.BoardSignals_Started (BoardSignals_Started),
		.iRE (receiverFIFO_iRE_receiverFIFO_iRE_HardLink),
		.iWData (receiverFIFO_iWData_receiverFIFO_iWData_HardLink),
		.iWE (receiverFIFO_iWE_receiverFIFO_iWE_HardLink),
		.oIsEmpty (receiverFIFO_oIsEmpty_receiverFIFO_oIsEmpty_HardLink),
		.oIsFull (receiverFIFO_oIsFull_receiverFIFO_oIsFull_HardLink),
		.oRACK (receiverFIFO_oRACK_receiverFIFO_oRACK_HardLink),
		.oRData (receiverFIFO_oRData_receiverFIFO_oRData_HardLink),
		.oRRawData (receiverFIFO_oRRawData_receiverFIFO_oRRawData_HardLink),
		.oRValid (receiverFIFO_oRValid_receiverFIFO_oRValid_HardLink),
		.oWACK (receiverFIFO_oWACK_receiverFIFO_oWACK_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_uart_transmitterFIFO
	AXISoCQuadCoreModule_TopLevel_uart_transmitterFIFO
	(
		// [BEGIN USER MAP FOR transmitterFIFO]
		// [END USER MAP FOR transmitterFIFO]
		.BoardSignals_Clock (BoardSignals_Clock),
		.BoardSignals_Reset (BoardSignals_Reset),
		.BoardSignals_Running (BoardSignals_Running),
		.BoardSignals_Starting (BoardSignals_Starting),
		.BoardSignals_Started (BoardSignals_Started),
		.iRE (transmitterFIFO_iRE_transmitterFIFO_iRE_HardLink),
		.iWData (transmitterFIFO_iWData_transmitterFIFO_iWData_HardLink),
		.iWE (transmitterFIFO_iWE_transmitterFIFO_iWE_HardLink),
		.oIsEmpty (transmitterFIFO_oIsEmpty_transmitterFIFO_oIsEmpty_HardLink),
		.oIsFull (transmitterFIFO_oIsFull_transmitterFIFO_oIsFull_HardLink),
		.oRACK (transmitterFIFO_oRACK_transmitterFIFO_oRACK_HardLink),
		.oRData (transmitterFIFO_oRData_transmitterFIFO_oRData_HardLink),
		.oRRawData (transmitterFIFO_oRRawData_transmitterFIFO_oRRawData_HardLink),
		.oRValid (transmitterFIFO_oRValid_transmitterFIFO_oRValid_HardLink),
		.oWACK (transmitterFIFO_oWACK_transmitterFIFO_oWACK_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_uart_uartClockControl
	AXISoCQuadCoreModule_TopLevel_uart_uartClockControl
	(
		// [BEGIN USER MAP FOR uartClockControl]
		// [END USER MAP FOR uartClockControl]
		.BoardSignals_Clock (BoardSignals_Clock),
		.BoardSignals_Reset (BoardSignals_Reset),
		.BoardSignals_Running (BoardSignals_Running),
		.BoardSignals_Starting (BoardSignals_Starting),
		.BoardSignals_Started (BoardSignals_Started),
		.iEN_RX (uartClockControl_iEN_RX_uartClockControl_iEN_RX_HardLink),
		.iEN_TX (uartClockControl_iEN_TX_uartClockControl_iEN_TX_HardLink),
		.iReceiverValid (uartClockControl_iReceiverValid_uartClockControl_iReceiverValid_HardLink),
		.iRX (uartClockControl_iRX_uartClockControl_iRX_HardLink),
		.iTransmitting (uartClockControl_iTransmitting_uartClockControl_iTransmitting_HardLink),
		.oRX (uartClockControl_oRX_uartClockControl_oRX_HardLink),
		.oRXCE (uartClockControl_oRXCE_uartClockControl_oRXCE_HardLink),
		.oRXCounter (uartClockControl_oRXCounter_uartClockControl_oRXCounter_HardLink),
		.oTXCE (uartClockControl_oTXCE_uartClockControl_oTXCE_HardLink),
		.oTXCounter (uartClockControl_oTXCounter_uartClockControl_oTXCounter_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_uart_uartReceiver
	AXISoCQuadCoreModule_TopLevel_uart_uartReceiver
	(
		// [BEGIN USER MAP FOR uartReceiver]
		// [END USER MAP FOR uartReceiver]
		.BoardSignals_Clock (BoardSignals_Clock),
		.BoardSignals_Reset (BoardSignals_Reset),
		.BoardSignals_Running (BoardSignals_Running),
		.BoardSignals_Starting (BoardSignals_Starting),
		.BoardSignals_Started (BoardSignals_Started),
		.iACK (uartReceiver_iACK_uartReceiver_iACK_HardLink),
		.iCE (uartReceiver_iCE_uartReceiver_iCE_HardLink),
		.iRX (uartReceiver_iRX_uartReceiver_iRX_HardLink),
		.oValid (uartReceiver_oValid_uartReceiver_oValid_HardLink),
		.oValue (uartReceiver_oValue_uartReceiver_oValue_HardLink)
	);
	AXISoCQuadCoreModule_TopLevel_uart_uartTransmitter
	AXISoCQuadCoreModule_TopLevel_uart_uartTransmitter
	(
		// [BEGIN USER MAP FOR uartTransmitter]
		// [END USER MAP FOR uartTransmitter]
		.BoardSignals_Clock (BoardSignals_Clock),
		.BoardSignals_Reset (BoardSignals_Reset),
		.BoardSignals_Running (BoardSignals_Running),
		.BoardSignals_Starting (BoardSignals_Starting),
		.BoardSignals_Started (BoardSignals_Started),
		.iCE (uartTransmitter_iCE_uartTransmitter_iCE_HardLink),
		.iValid (uartTransmitter_iValid_uartTransmitter_iValid_HardLink),
		.iValue (uartTransmitter_iValue_uartTransmitter_iValue_HardLink),
		.oCE (uartTransmitter_oCE_uartTransmitter_oCE_HardLink),
		.oTransmitting (uartTransmitter_oTransmitting_uartTransmitter_oTransmitting_HardLink),
		.oTX (uartTransmitter_oTX_uartTransmitter_oTX_HardLink),
		.oWillStartTransmitting (uartTransmitter_oWillStartTransmitting_uartTransmitter_oWillStartTransmitting_HardLink)
	);
	assign AXI4UARTModule_L108F17T60_Ternary = (transmitterFIFO_oIsFull ? AXI4UARTModule_L108F17T60_WhenTrue : AXI4UARTModule_L108F17T60_WhenFalse);
	assign AXI4UARTModule_L109F17T61_Ternary = (transmitterFIFO_oIsEmpty ? AXI4UARTModule_L109F17T61_WhenTrue : AXI4UARTModule_L109F17T61_WhenFalse);
	assign AXI4UARTModule_L110F17T57_Ternary = (receiverFIFO_oRValid ? AXI4UARTModule_L110F17T57_WhenTrue : AXI4UARTModule_L110F17T57_WhenFalse);
	assign AXI4UARTModule_L99F82T95_ExprLhs = {
		1'b0,
		byteAddr
	}
	;
	assign AXI4UARTModule_L99F82T95_ExprRhs = {
		{2{1'b0}},
		AXI4UARTModule_L99F94T95_Expr
	}
	;
	assign AXI4UARTModule_L78F24T45_Expr_1 = receiverFIFO_oIsFull;
	assign AXI4UARTModule_L92F23T96_Expr_1 = AXI4UARTModule_L92F23T53_Expr;
	assign AXI4UARTModule_L92F23T96_Expr_2 = AXI4UARTModule_L92F57T96_Expr;
	assign AXI4UARTModule_L92F23T53_Expr_1 = uartTransmitter_oTransmitting;
	assign AXI4UARTModule_L92F57T96_Expr_1 = uartTransmitter_oWillStartTransmitting;
	assign AXI4UARTModule_L99F23T95_Expr_1 = AXI4UARTModule_L99F23T78_Expr;
	assign AXI4UARTModule_L99F23T95_Expr_2 = AXI4UARTModule_L99F82T95_Expr;
	assign AXI4UARTModule_L99F23T78_Expr_1 = AXI4UARTModule_L99F23T45_Expr;
	assign AXI4UARTModule_L99F23T78_Expr_2 = axiSlave_outARREADYConfirming;
	assign AXI4UARTModule_L99F23T45_Expr_1 = receiverFIFO_oIsEmpty;
	assign Inputs_iEN_RX = iEN_RX;
	assign Inputs_iEN_TX = iEN_TX;
	assign Inputs_iRX = iRX;
	assign Inputs_M2S_W_B_BREADY = M2S[221];
	assign Inputs_M2S_W_W_WVALID = M2S[220];
	assign Inputs_M2S_W_W_WUSER = M2S[219:212];
	assign Inputs_M2S_W_W_WLAST = M2S[211];
	assign Inputs_M2S_W_W_WSTRB = M2S[210:207];
	assign Inputs_M2S_W_W_WDATA[3] = M2S[206:199];
	assign Inputs_M2S_W_W_WDATA[2] = M2S[198:191];
	assign Inputs_M2S_W_W_WDATA[1] = M2S[190:183];
	assign Inputs_M2S_W_W_WDATA[0] = M2S[182:175];
	assign Inputs_M2S_W_W_WID = M2S[174:167];
	assign Inputs_M2S_W_AW_AWVALID = M2S[166];
	assign Inputs_M2S_W_AW_AWUSER = M2S[165:158];
	assign Inputs_M2S_W_AW_AWREGION = M2S[157:150];
	assign Inputs_M2S_W_AW_AWQOS = M2S[149:146];
	assign Inputs_M2S_W_AW_AWPROT = M2S[145:143];
	assign Inputs_M2S_W_AW_AWCACHE = M2S[142:139];
	assign Inputs_M2S_W_AW_AWLOCK = M2S[138:137];
	assign Inputs_M2S_W_AW_AWBURST = M2S[136:135];
	assign Inputs_M2S_W_AW_AWSIZE = M2S[134:132];
	assign Inputs_M2S_W_AW_AWLEN = M2S[131:124];
	assign Inputs_M2S_W_AW_AWADDR = M2S[123:92];
	assign Inputs_M2S_W_AW_AWID = M2S[91:84];
	assign Inputs_M2S_R_R_RREADY = M2S[83];
	assign Inputs_M2S_R_AR_ARVALID = M2S[82];
	assign Inputs_M2S_R_AR_ARUSER = M2S[81:74];
	assign Inputs_M2S_R_AR_ARREGION = M2S[73:66];
	assign Inputs_M2S_R_AR_ARQOS = M2S[65:62];
	assign Inputs_M2S_R_AR_ARPROT = M2S[61:59];
	assign Inputs_M2S_R_AR_ARCACHE = M2S[58:55];
	assign Inputs_M2S_R_AR_ARLOCK = M2S[54:53];
	assign Inputs_M2S_R_AR_ARBURST = M2S[52:51];
	assign Inputs_M2S_R_AR_ARSIZE = M2S[50:48];
	assign Inputs_M2S_R_AR_ARLEN = M2S[47:40];
	assign Inputs_M2S_R_AR_ARADDR = M2S[39:8];
	assign Inputs_M2S_R_AR_ARID = M2S[7:0];
	assign AXI4UARTModule_L103F33T74_Index = axiSlave_outARADDR[1:0];
	assign byteAddr = AXI4UARTModule_L103F33T74_Index;
	assign AXI4UARTModule_L108F17T60_WhenTrue = AXI4UARTModule_L108F43T50_Cast;
	assign AXI4UARTModule_L108F17T60_WhenFalse = AXI4UARTModule_L108F53T60_Cast;
	assign AXI4UARTModule_L109F17T61_WhenTrue = AXI4UARTModule_L109F44T51_Cast;
	assign AXI4UARTModule_L109F17T61_WhenFalse = AXI4UARTModule_L109F54T61_Cast;
	assign AXI4UARTModule_L110F17T57_WhenTrue = AXI4UARTModule_L110F40T47_Cast;
	assign AXI4UARTModule_L110F17T57_WhenFalse = AXI4UARTModule_L110F50T57_Cast;
	assign AXI4UARTModule_L106F16L112T14_Source = {
		AXI4UARTModule_L108F17T60_Ternary,
		AXI4UARTModule_L109F17T61_Ternary,
		AXI4UARTModule_L110F17T57_Ternary,
		receiverFIFO_oRData
	}
	;
	assign AXI4UARTModule_L106F16L112T32_Resize = AXI4UARTModule_L106F16L112T14_Source;
	assign rdata = AXI4UARTModule_L106F16L112T32_Resize;
	assign AXI4UARTModule_L54F37L63T14_Object[0] = AXI4UARTModule_L57F29T33_Expr;
	assign AXI4UARTModule_L54F37L63T14_Object[1] = AXI4UARTModule_L59F29T33_Expr;
	assign AXI4UARTModule_L54F37L63T14_Object[2] = AXI4UARTModule_L61F28T32_Expr;
	assign AXI4UARTModule_L54F37L63T14_Object[34:3] = rdata;
	assign AXI4UARTModule_L54F37L63T14_Object[35] = AXI4UARTModule_L58F28T32_Expr;
	assign AXI4UARTModule_L54F37L63T14_Object[36] = AXI4UARTModule_L60F28T32_Expr;
	assign AXI4UARTModule_L54F37L63T14_Object[44:37] = Inputs_M2S_R_AR_ARID;
	assign AXI4UARTModule_L54F37L63T14_Object[76:45] = Inputs_M2S_R_AR_ARADDR;
	assign AXI4UARTModule_L54F37L63T14_Object[84:77] = Inputs_M2S_R_AR_ARLEN;
	assign AXI4UARTModule_L54F37L63T14_Object[87:85] = Inputs_M2S_R_AR_ARSIZE;
	assign AXI4UARTModule_L54F37L63T14_Object[89:88] = Inputs_M2S_R_AR_ARBURST;
	assign AXI4UARTModule_L54F37L63T14_Object[91:90] = Inputs_M2S_R_AR_ARLOCK;
	assign AXI4UARTModule_L54F37L63T14_Object[95:92] = Inputs_M2S_R_AR_ARCACHE;
	assign AXI4UARTModule_L54F37L63T14_Object[98:96] = Inputs_M2S_R_AR_ARPROT;
	assign AXI4UARTModule_L54F37L63T14_Object[102:99] = Inputs_M2S_R_AR_ARQOS;
	assign AXI4UARTModule_L54F37L63T14_Object[110:103] = Inputs_M2S_R_AR_ARREGION;
	assign AXI4UARTModule_L54F37L63T14_Object[118:111] = Inputs_M2S_R_AR_ARUSER;
	assign AXI4UARTModule_L54F37L63T14_Object[119] = Inputs_M2S_R_AR_ARVALID;
	assign AXI4UARTModule_L54F37L63T14_Object[120] = Inputs_M2S_R_R_RREADY;
	assign AXI4UARTModule_L54F37L63T14_Object[128:121] = Inputs_M2S_W_AW_AWID;
	assign AXI4UARTModule_L54F37L63T14_Object[160:129] = Inputs_M2S_W_AW_AWADDR;
	assign AXI4UARTModule_L54F37L63T14_Object[168:161] = Inputs_M2S_W_AW_AWLEN;
	assign AXI4UARTModule_L54F37L63T14_Object[171:169] = Inputs_M2S_W_AW_AWSIZE;
	assign AXI4UARTModule_L54F37L63T14_Object[173:172] = Inputs_M2S_W_AW_AWBURST;
	assign AXI4UARTModule_L54F37L63T14_Object[175:174] = Inputs_M2S_W_AW_AWLOCK;
	assign AXI4UARTModule_L54F37L63T14_Object[179:176] = Inputs_M2S_W_AW_AWCACHE;
	assign AXI4UARTModule_L54F37L63T14_Object[182:180] = Inputs_M2S_W_AW_AWPROT;
	assign AXI4UARTModule_L54F37L63T14_Object[186:183] = Inputs_M2S_W_AW_AWQOS;
	assign AXI4UARTModule_L54F37L63T14_Object[194:187] = Inputs_M2S_W_AW_AWREGION;
	assign AXI4UARTModule_L54F37L63T14_Object[202:195] = Inputs_M2S_W_AW_AWUSER;
	assign AXI4UARTModule_L54F37L63T14_Object[203] = Inputs_M2S_W_AW_AWVALID;
	assign AXI4UARTModule_L54F37L63T14_Object[211:204] = Inputs_M2S_W_W_WID;
	assign AXI4UARTModule_L54F37L63T14_Object[243:212] = {
		Inputs_M2S_W_W_WDATA[3],
		Inputs_M2S_W_W_WDATA[2],
		Inputs_M2S_W_W_WDATA[1],
		Inputs_M2S_W_W_WDATA[0]
	}
	;
	assign AXI4UARTModule_L54F37L63T14_Object[247:244] = Inputs_M2S_W_W_WSTRB;
	assign AXI4UARTModule_L54F37L63T14_Object[248] = Inputs_M2S_W_W_WLAST;
	assign AXI4UARTModule_L54F37L63T14_Object[256:249] = Inputs_M2S_W_W_WUSER;
	assign AXI4UARTModule_L54F37L63T14_Object[257] = Inputs_M2S_W_W_WVALID;
	assign AXI4UARTModule_L54F37L63T14_Object[258] = Inputs_M2S_W_B_BREADY;
	assign axiSlave_M2S = AXI4UARTModule_L54F37L63T14_Object[258:37];
	assign axiSlave_inWREADY = AXI4UARTModule_L54F37L63T14_Object[36];
	assign axiSlave_inRVALID = AXI4UARTModule_L54F37L63T14_Object[35];
	assign axiSlave_inRDATA[3] = AXI4UARTModule_L54F37L63T14_Object[34:27];
	assign axiSlave_inRDATA[2] = AXI4UARTModule_L54F37L63T14_Object[26:19];
	assign axiSlave_inRDATA[1] = AXI4UARTModule_L54F37L63T14_Object[18:11];
	assign axiSlave_inRDATA[0] = AXI4UARTModule_L54F37L63T14_Object[10:3];
	assign axiSlave_inBVALID = AXI4UARTModule_L54F37L63T14_Object[2];
	assign axiSlave_inAWREADY = AXI4UARTModule_L54F37L63T14_Object[1];
	assign axiSlave_inARREADY = AXI4UARTModule_L54F37L63T14_Object[0];
	assign AXI4UARTModule_L65F45L72T14_Object[0] = Inputs_iEN_RX;
	assign AXI4UARTModule_L65F45L72T14_Object[1] = Inputs_iEN_TX;
	assign AXI4UARTModule_L65F45L72T14_Object[2] = uartReceiver_oValid;
	assign AXI4UARTModule_L65F45L72T14_Object[3] = Inputs_iRX;
	assign AXI4UARTModule_L65F45L72T14_Object[4] = uartTransmitter_oTransmitting;
	assign uartClockControl_iTransmitting = AXI4UARTModule_L65F45L72T14_Object[4];
	assign uartClockControl_iRX = AXI4UARTModule_L65F45L72T14_Object[3];
	assign uartClockControl_iReceiverValid = AXI4UARTModule_L65F45L72T14_Object[2];
	assign uartClockControl_iEN_TX = AXI4UARTModule_L65F45L72T14_Object[1];
	assign uartClockControl_iEN_RX = AXI4UARTModule_L65F45L72T14_Object[0];
	assign AXI4UARTModule_L74F41L79T14_Object[0] = AXI4UARTModule_L78F24T45_Expr;
	assign AXI4UARTModule_L74F41L79T14_Object[1] = uartClockControl_oRXCE;
	assign AXI4UARTModule_L74F41L79T14_Object[2] = uartClockControl_oRX;
	assign uartReceiver_iRX = AXI4UARTModule_L74F41L79T14_Object[2];
	assign uartReceiver_iCE = AXI4UARTModule_L74F41L79T14_Object[1];
	assign uartReceiver_iACK = AXI4UARTModule_L74F41L79T14_Object[0];
	assign AXI4UARTModule_L81F44L86T14_Object[0] = uartClockControl_oTXCE;
	assign AXI4UARTModule_L81F44L86T14_Object[1] = transmitterFIFO_oRACK;
	assign AXI4UARTModule_L81F44L86T14_Object[9:2] = transmitterFIFO_oRData;
	assign uartTransmitter_iValue = AXI4UARTModule_L81F44L86T14_Object[9:2];
	assign uartTransmitter_iValid = AXI4UARTModule_L81F44L86T14_Object[1];
	assign uartTransmitter_iCE = AXI4UARTModule_L81F44L86T14_Object[0];
	assign AXI4UARTModule_L88F44L93T14_Object[0] = AXI4UARTModule_L92F23T96_Expr;
	assign AXI4UARTModule_L88F44L93T14_Object[8:1] = axiSlave_outWDATA[0];
	assign AXI4UARTModule_L88F44L93T14_Object[9] = axiSlave_outWREADYConfirming;
	assign transmitterFIFO_iWE = AXI4UARTModule_L88F44L93T14_Object[9];
	assign transmitterFIFO_iWData = AXI4UARTModule_L88F44L93T14_Object[8:1];
	assign transmitterFIFO_iRE = AXI4UARTModule_L88F44L93T14_Object[0];
	assign AXI4UARTModule_L95F41L100T14_Object[0] = AXI4UARTModule_L99F23T95_Expr;
	assign AXI4UARTModule_L95F41L100T14_Object[8:1] = uartReceiver_oValue;
	assign AXI4UARTModule_L95F41L100T14_Object[9] = uartReceiver_oValid;
	assign receiverFIFO_iWE = AXI4UARTModule_L95F41L100T14_Object[9];
	assign receiverFIFO_iWData = AXI4UARTModule_L95F41L100T14_Object[8:1];
	assign receiverFIFO_iRE = AXI4UARTModule_L95F41L100T14_Object[0];
	assign oCE = uartTransmitter_oCE;
	assign oRXCounter = uartClockControl_oRXCounter;
	assign oRXData = uartReceiver_oValue;
	assign oRXValid = uartReceiver_oValid;
	assign oS2M = axiSlave_S2M;
	assign oTransmitting = uartTransmitter_oTransmitting;
	assign oTX = uartTransmitter_oTX;
	assign oTXCounter = uartClockControl_oTXCounter;
	assign axiSlave_inARREADY_axiSlave_inARREADY_HardLink = axiSlave_inARREADY;
	assign axiSlave_inAWREADY_axiSlave_inAWREADY_HardLink = axiSlave_inAWREADY;
	assign axiSlave_inBVALID_axiSlave_inBVALID_HardLink = axiSlave_inBVALID;
	assign axiSlave_inRDATA0_axiSlave_inRDATA_HardLink = axiSlave_inRDATA[0];
	assign axiSlave_inRDATA1_axiSlave_inRDATA_HardLink = axiSlave_inRDATA[1];
	assign axiSlave_inRDATA2_axiSlave_inRDATA_HardLink = axiSlave_inRDATA[2];
	assign axiSlave_inRDATA3_axiSlave_inRDATA_HardLink = axiSlave_inRDATA[3];
	assign axiSlave_inRVALID_axiSlave_inRVALID_HardLink = axiSlave_inRVALID;
	assign axiSlave_inWREADY_axiSlave_inWREADY_HardLink = axiSlave_inWREADY;
	assign axiSlave_M2S_axiSlave_M2S_HardLink = axiSlave_M2S;
	assign axiSlave_outARADDR = axiSlave_outARADDR_axiSlave_outARADDR_HardLink;
	assign axiSlave_outARREADYConfirming = axiSlave_outARREADYConfirming_axiSlave_outARREADYConfirming_HardLink;
	assign axiSlave_outARVALID = axiSlave_outARVALID_axiSlave_outARVALID_HardLink;
	assign axiSlave_outAWADDR = axiSlave_outAWADDR_axiSlave_outAWADDR_HardLink;
	assign axiSlave_outAWREADYConfirming = axiSlave_outAWREADYConfirming_axiSlave_outAWREADYConfirming_HardLink;
	assign axiSlave_outAWVALID = axiSlave_outAWVALID_axiSlave_outAWVALID_HardLink;
	assign axiSlave_outReadTXCompleting = axiSlave_outReadTXCompleting_axiSlave_outReadTXCompleting_HardLink;
	assign axiSlave_outWDATA[0] = axiSlave_outWDATA0_axiSlave_outWDATA_HardLink;
	assign axiSlave_outWDATA[1] = axiSlave_outWDATA1_axiSlave_outWDATA_HardLink;
	assign axiSlave_outWDATA[2] = axiSlave_outWDATA2_axiSlave_outWDATA_HardLink;
	assign axiSlave_outWDATA[3] = axiSlave_outWDATA3_axiSlave_outWDATA_HardLink;
	assign axiSlave_outWREADYConfirming = axiSlave_outWREADYConfirming_axiSlave_outWREADYConfirming_HardLink;
	assign axiSlave_outWriteTXCompleting = axiSlave_outWriteTXCompleting_axiSlave_outWriteTXCompleting_HardLink;
	assign axiSlave_outWSTRB = axiSlave_outWSTRB_axiSlave_outWSTRB_HardLink;
	assign axiSlave_outWVALID = axiSlave_outWVALID_axiSlave_outWVALID_HardLink;
	assign axiSlave_S2M = axiSlave_S2M_axiSlave_S2M_HardLink;
	assign receiverFIFO_iRE_receiverFIFO_iRE_HardLink = receiverFIFO_iRE;
	assign receiverFIFO_iWData_receiverFIFO_iWData_HardLink = receiverFIFO_iWData;
	assign receiverFIFO_iWE_receiverFIFO_iWE_HardLink = receiverFIFO_iWE;
	assign receiverFIFO_oIsEmpty = receiverFIFO_oIsEmpty_receiverFIFO_oIsEmpty_HardLink;
	assign receiverFIFO_oIsFull = receiverFIFO_oIsFull_receiverFIFO_oIsFull_HardLink;
	assign receiverFIFO_oRACK = receiverFIFO_oRACK_receiverFIFO_oRACK_HardLink;
	assign receiverFIFO_oRData = receiverFIFO_oRData_receiverFIFO_oRData_HardLink;
	assign receiverFIFO_oRRawData = receiverFIFO_oRRawData_receiverFIFO_oRRawData_HardLink;
	assign receiverFIFO_oRValid = receiverFIFO_oRValid_receiverFIFO_oRValid_HardLink;
	assign receiverFIFO_oWACK = receiverFIFO_oWACK_receiverFIFO_oWACK_HardLink;
	assign transmitterFIFO_iRE_transmitterFIFO_iRE_HardLink = transmitterFIFO_iRE;
	assign transmitterFIFO_iWData_transmitterFIFO_iWData_HardLink = transmitterFIFO_iWData;
	assign transmitterFIFO_iWE_transmitterFIFO_iWE_HardLink = transmitterFIFO_iWE;
	assign transmitterFIFO_oIsEmpty = transmitterFIFO_oIsEmpty_transmitterFIFO_oIsEmpty_HardLink;
	assign transmitterFIFO_oIsFull = transmitterFIFO_oIsFull_transmitterFIFO_oIsFull_HardLink;
	assign transmitterFIFO_oRACK = transmitterFIFO_oRACK_transmitterFIFO_oRACK_HardLink;
	assign transmitterFIFO_oRData = transmitterFIFO_oRData_transmitterFIFO_oRData_HardLink;
	assign transmitterFIFO_oRRawData = transmitterFIFO_oRRawData_transmitterFIFO_oRRawData_HardLink;
	assign transmitterFIFO_oRValid = transmitterFIFO_oRValid_transmitterFIFO_oRValid_HardLink;
	assign transmitterFIFO_oWACK = transmitterFIFO_oWACK_transmitterFIFO_oWACK_HardLink;
	assign uartClockControl_iEN_RX_uartClockControl_iEN_RX_HardLink = uartClockControl_iEN_RX;
	assign uartClockControl_iEN_TX_uartClockControl_iEN_TX_HardLink = uartClockControl_iEN_TX;
	assign uartClockControl_iReceiverValid_uartClockControl_iReceiverValid_HardLink = uartClockControl_iReceiverValid;
	assign uartClockControl_iRX_uartClockControl_iRX_HardLink = uartClockControl_iRX;
	assign uartClockControl_iTransmitting_uartClockControl_iTransmitting_HardLink = uartClockControl_iTransmitting;
	assign uartClockControl_oRX = uartClockControl_oRX_uartClockControl_oRX_HardLink;
	assign uartClockControl_oRXCE = uartClockControl_oRXCE_uartClockControl_oRXCE_HardLink;
	assign uartClockControl_oRXCounter = uartClockControl_oRXCounter_uartClockControl_oRXCounter_HardLink;
	assign uartClockControl_oTXCE = uartClockControl_oTXCE_uartClockControl_oTXCE_HardLink;
	assign uartClockControl_oTXCounter = uartClockControl_oTXCounter_uartClockControl_oTXCounter_HardLink;
	assign uartReceiver_iACK_uartReceiver_iACK_HardLink = uartReceiver_iACK;
	assign uartReceiver_iCE_uartReceiver_iCE_HardLink = uartReceiver_iCE;
	assign uartReceiver_iRX_uartReceiver_iRX_HardLink = uartReceiver_iRX;
	assign uartReceiver_oValid = uartReceiver_oValid_uartReceiver_oValid_HardLink;
	assign uartReceiver_oValue = uartReceiver_oValue_uartReceiver_oValue_HardLink;
	assign uartTransmitter_iCE_uartTransmitter_iCE_HardLink = uartTransmitter_iCE;
	assign uartTransmitter_iValid_uartTransmitter_iValid_HardLink = uartTransmitter_iValid;
	assign uartTransmitter_iValue_uartTransmitter_iValue_HardLink = uartTransmitter_iValue;
	assign uartTransmitter_oCE = uartTransmitter_oCE_uartTransmitter_oCE_HardLink;
	assign uartTransmitter_oTransmitting = uartTransmitter_oTransmitting_uartTransmitter_oTransmitting_HardLink;
	assign uartTransmitter_oTX = uartTransmitter_oTX_uartTransmitter_oTX_HardLink;
	assign uartTransmitter_oWillStartTransmitting = uartTransmitter_oWillStartTransmitting_uartTransmitter_oWillStartTransmitting_HardLink;
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
