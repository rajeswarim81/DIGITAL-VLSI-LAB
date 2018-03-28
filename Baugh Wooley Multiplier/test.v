`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:27:27 02/12/2018
// Design Name:   multiplier
// Module Name:   C:/Users/balu8108/Documents/xilinx/verilog/baugh_wooley/test.v
// Project Name:  baugh_wooley
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] s;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        a=4'b0011;
		  b=4'b0111;
		 #100;
		 a=4'b1011;
		 b=4'b0101;
		 #100;
		 a=4'b1011;
		 b=4'b1100;
		 #100
		 a=-3;
		 b=2;
		// Add stimulus here

	end
      
endmodule

