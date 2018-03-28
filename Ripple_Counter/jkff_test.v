`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:04 01/14/2018
// Design Name:   JKff
// Module Name:   C:/Users/Kshitiz/Desktop/Synopsys Project - Fault Testing/VLSI_Dig/jkff_test.v
// Project Name:  VLSI_Dig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkff_test;

	// Inputs
	reg clk;
	reg J;
	reg K;
	reg reset;

	// Outputs
	wire Q;
	wire Q_;

	// Instantiate the Unit Under Test (UUT)
	JKff uut (
		.clk(clk), 
		.J(J), 
		.K(K), 
		.reset(reset), 
		.Q(Q), 
		.Q_(Q_)
	);
	
	always begin
		#1 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		J = 0;
		K = 0;
		reset = 1;

		#1;
      reset = 0;
		J = 1;
		K = 0;
		
		#2
		J = 0;
		K = 1;
		
		#2
		J = 1;
		K = 1;
		
		#2
		J = 0;
		K = 0;
		
		#2 $finish;
	end
      
endmodule

