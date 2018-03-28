`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:03:56 02/06/2018
// Design Name:   DownCounter
// Module Name:   G:/Rajeswari Mahapatra/6th Sem EC/DIG VLSI LAB/6_SumNUMBERS/SumNumbers/DownCounter_test.v
// Project Name:  SumNumbers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DownCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DownCounter_test;

	// Inputs
	reg clk;
	reg [3:0] N;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	DownCounter uut (
		.clk(clk), 
		.N(N), 
		.out(out)
	);
	
	always begin
	           #20 clk =~clk;
				  end

	initial begin
		// Initialize Inputs
		clk = 0;
		N = 4'b0101;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

