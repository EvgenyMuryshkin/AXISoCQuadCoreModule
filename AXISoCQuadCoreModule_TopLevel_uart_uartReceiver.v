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
// System configuration name is AXISoCQuadCoreModule_TopLevel_uart_uartReceiver, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_uart_uartReceiver
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire BoardSignals_Clock,
	input wire BoardSignals_Reset,
	input wire BoardSignals_Running,
	input wire BoardSignals_Starting,
	input wire BoardSignals_Started,
	input wire iACK,
	input wire iCE,
	input wire iRX,
	output wire oValid,
	output wire [7:0] oValue
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire UARTReceiverModule_L27F78T82_Expr = 1'b1;
	wire UARTReceiverModule_L27F84T88_Expr = 1'b1;
	wire [7: 0] UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L26F13L28T14_UARTReceiverModule_L27F90T103_Expr = 8'b11111111;
	wire UARTReceiverModule_L37F94T98_Expr = 1'b1;
	wire [7: 0] UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L36F17L38T18_UARTReceiverModule_L37F100T113_Expr = 8'b11111111;
	wire Inputs_iACK;
	wire Inputs_iCE;
	wire Inputs_iRX;
	reg [9: 0] NextState_rxValue;
	wire iValid;
	wire [9: 0] UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L26F13L28T14_UARTReceiverModule_L27F37T104_Source;
	wire [9: 0] UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L32F17L34T18_UARTReceiverModule_L33F41T114_Source;
	wire [9: 0] UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L36F17L38T18_UARTReceiverModule_L37F41T114_Source;
	reg [9: 0] State_rxValue = 10'b0000000000;
	wire [9: 0] State_rxValueDefault = 10'b1111111111;
	wire UARTReceiverModule_L19F24T41_Expr;
	wire UARTReceiverModule_L19F24T41_Expr_1;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr_1;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr_2;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L31F21T28_Expr;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L31F21T28_Expr_1;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L35F26T37_Expr;
	wire UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L35F26T37_Expr_1;
	always @ (posedge BoardSignals_Clock)
	begin
		if ((BoardSignals_Reset == 1))
		begin
			State_rxValue <= State_rxValueDefault;
		end
		else
		begin
			State_rxValue <= NextState_rxValue;
		end
	end
	assign UARTReceiverModule_L19F24T41_Expr = ~UARTReceiverModule_L19F24T41_Expr_1;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr = UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr_1 & UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr_2;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L31F21T28_Expr = ~UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L31F21T28_Expr_1;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L35F26T37_Expr = ~UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L35F26T37_Expr_1;
	always @ (*)
	begin
		NextState_rxValue = State_rxValue;
		if ((UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr == 1))
		begin
			NextState_rxValue = UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L26F13L28T14_UARTReceiverModule_L27F37T104_Source;
		end
		else if ((Inputs_iCE == 1))
		begin
			if ((UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L31F21T28_Expr == 1))
			begin
				NextState_rxValue = UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L32F17L34T18_UARTReceiverModule_L33F41T114_Source;
			end
			else if ((UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L35F26T37_Expr == 1))
			begin
				NextState_rxValue = UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L36F17L38T18_UARTReceiverModule_L37F41T114_Source;
			end
		end
	end
	assign UARTReceiverModule_L19F24T41_Expr_1 = State_rxValue[0];
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr_1 = Inputs_iACK;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L25F17T38_Expr_2 = iValid;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L31F21T28_Expr_1 = iValid;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L35F26T37_Expr_1 = Inputs_iRX;
	assign Inputs_iACK = iACK;
	assign Inputs_iCE = iCE;
	assign Inputs_iRX = iRX;
	assign iValid = UARTReceiverModule_L19F24T41_Expr;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L26F13L28T14_UARTReceiverModule_L27F37T104_Source = {
		UARTReceiverModule_L27F78T82_Expr,
		UARTReceiverModule_L27F84T88_Expr,
		UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L26F13L28T14_UARTReceiverModule_L27F90T103_Expr
	}
	;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L32F17L34T18_UARTReceiverModule_L33F41T114_Source = {
		Inputs_iRX,
		State_rxValue[9:1]
	}
	;
	assign UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L36F17L38T18_UARTReceiverModule_L37F41T114_Source = {
		Inputs_iRX,
		UARTReceiverModule_L37F94T98_Expr,
		UARTReceiverModule_L24F9L40T10_UARTReceiverModule_L30F13L39T14_UARTReceiverModule_L36F17L38T18_UARTReceiverModule_L37F100T113_Expr
	}
	;
	assign oValid = iValid;
	assign oValue = State_rxValue[8:1];
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
