`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:15 02/06/2018
// Design Name:   FA
// Module Name:   G:/Rajeswari Mahapatra/6th Sem EC/DIG VLSI LAB/6_SumNUMBERS/SumNumbers/FA_test.v
// Project Name:  SumNumbers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_test;

	// Inputs
	reg [3:0] x;
	reg [6:0] y;
	reg cin;

	// Outputs
	wire [6:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.x(x), 
		.y(y), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		x = 4'b1111;
		y = 7'b0000001;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		x = 4'b1101;
		y = 7'b0000001;
		cin = 0;

        
		// Add stimulus here

	end
      
endmodule

