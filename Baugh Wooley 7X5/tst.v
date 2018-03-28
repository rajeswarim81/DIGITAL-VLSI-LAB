`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:30 01/29/2018
// Design Name:   mult
// Module Name:   F:/fpga/BAUGH_WOOLY_MULT/tst.v
// Project Name:  BAUGH_WOOLY_MULT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tst;

	// Inputs
	reg [6:0] A;
	reg [4:0] B;
	reg T;

	// Outputs
	wire [11:0] out;

	// Instantiate the Unit Under Test (UUT)
	mult uut (
		.A(A), 
		.B(B), 
		.T(T), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		A = 2;
		B = 4;
		T = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2;
		B = 4;
		T = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
		A = 8;
		B = 2;
		T = 0;
		

		#100;
		A = 8;
		B = 2;
		T = 1;
				
		#100;
		A = 8;
		B = -2;
		T = 0;
				

      #100;
		A = 8;
		B = -2;
		T = 1;
		
			#100;
		A = 5;
		B = 6;
		T = 0;
				

      #100;
		A = 5;
		B = 6;
		T = 1;
		
			#100;
		A = 127;
		B = 31;
		T = 0;
				

      #100;
		A = -63;
		B = 15;
		T = 1;
		
			#100;
		A = -63;
		B = -15;
		T = 1;
				

      #100;
		A = 63;
		B = 15;
		T = 1;
								


        
		// Add stimulus here

	end
      
endmodule

