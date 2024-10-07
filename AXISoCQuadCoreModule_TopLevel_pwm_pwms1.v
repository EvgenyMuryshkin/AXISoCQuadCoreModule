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
// System configuration name is AXISoCQuadCoreModule_TopLevel_pwm_pwms1, clock frequency is 1Hz, Embedded
// FSM summary
// -- Packages
module AXISoCQuadCoreModule_TopLevel_pwm_pwms1
(
	// [BEGIN USER PORTS]
	// [END USER PORTS]
	input wire BoardSignals_Clock,
	input wire BoardSignals_Reset,
	input wire BoardSignals_Running,
	input wire BoardSignals_Starting,
	input wire BoardSignals_Started,
	input wire iActive,
	input wire [31:0] iDurationClocks,
	input wire [31:0] iOnClock,
	output wire oCycle,
	output wire oPWM
);
	// [BEGIN USER SIGNALS]
	// [END USER SIGNALS]
	localparam HiSignal = 1'b1;
	localparam LoSignal = 1'b0;
	wire Zero = 1'b0;
	wire One = 1'b1;
	wire true = 1'b1;
	wire false = 1'b0;
	wire PWMModule_L27F56T57_Expr = 1'b1;
	wire PWMModule_L31F31T36_Expr = 1'b0;
	wire PWMModule_L33F54T55_Expr = 1'b0;
	wire PWMModule_L33F85T86_Expr = 1'b0;
	wire PWMModule_L35F69T70_Expr = 1'b1;
	wire PWMModule_L37F47T48_Expr = 1'b0;
	wire PWMModule_L38F39T43_Expr = 1'b1;
	wire PWMModule_L39F37T41_Expr = 1'b1;
	wire PWMModule_L43F66T67_Expr = 1'b1;
	wire PWMModule_L45F41T46_Expr = 1'b0;
	wire PWMModule_L48F69T70_Expr = 1'b1;
	wire Inputs_iActive;
	wire [31: 0] Inputs_iDurationClocks;
	wire [31: 0] Inputs_iOnClock;
	reg [31: 0] NextState_clocksCounter;
	reg NextState_cycle;
	reg NextState_pwm;
	wire [31: 0] decrementCounter;
	reg [31: 0] State_clocksCounter = 32'b00000000000000000000000000000000;
	wire [31: 0] State_clocksCounterDefault = 32'b00000000000000000000000000000000;
	reg State_cycle = 1'b0;
	wire State_cycleDefault = 1'b0;
	reg State_pwm = 1'b0;
	wire State_pwmDefault = 1'b0;
	wire PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr;
	wire PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr_1;
	wire PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr_2;
	wire PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr;
	wire PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr_1;
	wire PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr_2;
	wire signed [33: 0] PWMModule_L27F34T57_Expr;
	wire signed [33: 0] PWMModule_L27F34T57_Expr_1;
	wire signed [33: 0] PWMModule_L27F34T57_Expr_2;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr_1;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr_2;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr_1;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr_2;
	wire [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr_1;
	wire signed [33: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr_2;
	wire PWMModule_L30F9L51T10_PWMModule_L33F35T55_Expr;
	wire signed [32: 0] PWMModule_L30F9L51T10_PWMModule_L33F35T55_ExprLhs;
	wire signed [32: 0] PWMModule_L30F9L51T10_PWMModule_L33F35T55_ExprRhs;
	wire PWMModule_L30F9L51T10_PWMModule_L33F59T86_Expr;
	wire signed [32: 0] PWMModule_L30F9L51T10_PWMModule_L33F59T86_ExprLhs;
	wire signed [32: 0] PWMModule_L30F9L51T10_PWMModule_L33F59T86_ExprRhs;
	wire PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_Expr;
	wire signed [34: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_ExprLhs;
	wire signed [34: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_ExprRhs;
	wire PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_Expr;
	wire signed [34: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_ExprLhs;
	wire signed [34: 0] PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_ExprRhs;
	always @ (posedge BoardSignals_Clock)
	begin
		if ((BoardSignals_Reset == 1))
		begin
			State_clocksCounter <= State_clocksCounterDefault;
			State_cycle <= State_cycleDefault;
			State_pwm <= State_pwmDefault;
		end
		else
		begin
			State_clocksCounter <= NextState_clocksCounter;
			State_cycle <= NextState_cycle;
			State_pwm <= NextState_pwm;
		end
	end
	assign PWMModule_L30F9L51T10_PWMModule_L33F35T55_Expr = PWMModule_L30F9L51T10_PWMModule_L33F35T55_ExprLhs != PWMModule_L30F9L51T10_PWMModule_L33F35T55_ExprRhs ? 1'b1 : 1'b0;
	assign PWMModule_L30F9L51T10_PWMModule_L33F59T86_Expr = PWMModule_L30F9L51T10_PWMModule_L33F59T86_ExprLhs != PWMModule_L30F9L51T10_PWMModule_L33F59T86_ExprRhs ? 1'b1 : 1'b0;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_Expr = PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_ExprLhs == PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_ExprRhs ? 1'b1 : 1'b0;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_Expr = PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_ExprLhs == PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_ExprRhs ? 1'b1 : 1'b0;
	assign PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr = PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr_1 & PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr_2;
	assign PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr = PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr_1 & PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr_2;
	assign PWMModule_L27F34T57_Expr = PWMModule_L27F34T57_Expr_1 - PWMModule_L27F34T57_Expr_2;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr = PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr_1 - PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr_2;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr = PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr_1 - PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr_2;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr = PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr_1 + PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr_2;
	always @ (*)
	begin
		NextState_clocksCounter = State_clocksCounter;
		NextState_cycle = State_cycle;
		NextState_pwm = State_pwm;
		NextState_cycle = PWMModule_L31F31T36_Expr;
		if ((PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr == 1))
		begin
			if ((PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_Expr == 1))
			begin
				NextState_clocksCounter = {
					{31{1'b0}},
					PWMModule_L37F47T48_Expr
				}
				;
				NextState_cycle = PWMModule_L38F39T43_Expr;
				NextState_pwm = PWMModule_L39F37T41_Expr;
			end
			else
			begin
				if ((PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_Expr == 1))
				begin
					NextState_pwm = PWMModule_L45F41T46_Expr;
				end
				NextState_clocksCounter = PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr[31:0];
			end
		end
	end
	assign PWMModule_L30F9L51T10_PWMModule_L33F35T55_ExprLhs = {
		1'b0,
		Inputs_iOnClock
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L33F35T55_ExprRhs = {
		{32{1'b0}},
		PWMModule_L33F54T55_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L33F59T86_ExprLhs = {
		1'b0,
		Inputs_iDurationClocks
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L33F59T86_ExprRhs = {
		{32{1'b0}},
		PWMModule_L33F85T86_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_ExprLhs = {
		{3{1'b0}},
		State_clocksCounter
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F21T70_ExprRhs = {
		PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr[33],
		PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_ExprLhs = {
		{3{1'b0}},
		State_clocksCounter
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F25T67_ExprRhs = {
		PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr[33],
		PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr_1 = PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr;
	assign PWMModule_L30F9L51T10_PWMModule_L33F17T86_Expr_2 = PWMModule_L30F9L51T10_PWMModule_L33F59T86_Expr;
	assign PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr_1 = Inputs_iActive;
	assign PWMModule_L30F9L51T10_PWMModule_L33F17T55_Expr_2 = PWMModule_L30F9L51T10_PWMModule_L33F35T55_Expr;
	assign PWMModule_L27F34T57_Expr_1 = {
		{2{1'b0}},
		State_clocksCounter
	}
	;
	assign PWMModule_L27F34T57_Expr_2 = {
		{33{1'b0}},
		PWMModule_L27F56T57_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr_1 = {
		{2{1'b0}},
		Inputs_iDurationClocks
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L35F44T70_Expr_2 = {
		{33{1'b0}},
		PWMModule_L35F69T70_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr_1 = {
		{2{1'b0}},
		Inputs_iOnClock
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L43F48T67_Expr_2 = {
		{33{1'b0}},
		PWMModule_L43F66T67_Expr
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr_1 = {
		{2{1'b0}},
		State_clocksCounter
	}
	;
	assign PWMModule_L30F9L51T10_PWMModule_L34F13L50T14_PWMModule_L42F17L49T18_PWMModule_L48F47T70_Expr_2 = {
		{33{1'b0}},
		PWMModule_L48F69T70_Expr
	}
	;
	assign Inputs_iActive = iActive;
	assign Inputs_iDurationClocks = iDurationClocks;
	assign Inputs_iOnClock = iOnClock;
	assign decrementCounter = PWMModule_L27F34T57_Expr[31:0];
	assign oCycle = State_cycle;
	assign oPWM = State_pwm;
	// [BEGIN USER ARCHITECTURE]
	// [END USER ARCHITECTURE]
endmodule
