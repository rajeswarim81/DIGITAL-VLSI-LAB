`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:23 02/06/2018
// Design Name:   SumNumbers
// Module Name:   G:/Rajeswari Mahapatra/6th Sem EC/DIG VLSI LAB/6_SumNUMBERS/SumNumbers/SumNumbers_test.v
// Project Name:  SumNumbers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SumNumbers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SumNumbers_test;

	// Inputs
	reg [3:0] N;
	reg clk;

	// Outputs
	wire [6:0] rout;
	wire [6:0] temp;

	// Instantiate the Unit Under Test (UUT)
	SumNumbers uut (
		.N(N), 
		.clk(clk), 
		.rout(rout), 
		.temp(temp)
	);

	initial begin
		// Initialize Inputs
		N = 4'b0010;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

