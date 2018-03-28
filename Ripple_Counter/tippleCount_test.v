`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:17 01/14/2018
// Design Name:   rippleCounter
// Module Name:   C:/Users/Kshitiz/Desktop/Synopsys Project - Fault Testing/VLSI_Dig/tippleCount_test.v
// Project Name:  VLSI_Dig
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rippleCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tippleCount_test;

	// Inputs
	reg up;
	reg reset;
	reg clk;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	rippleCounter uut (
		.up(up), 
		.reset(reset), 
		.clk(clk), 
		.out(out)
	);
	
	always begin
		#1 clk = ~clk;
	end
	
	initial begin
		up = 0;
		reset = 1;
		clk = 0;

		#2;
		reset = 0;
		up = 1;
		
		#17
		up = 0;
		
		#17
		$finish;
	end
      
endmodule

