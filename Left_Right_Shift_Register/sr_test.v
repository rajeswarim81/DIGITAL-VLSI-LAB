`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:37:16 01/23/2018
// Design Name:   sr
// Module Name:   G:/Rajeswari Mahapatra/6th Sem EC/DIG VLSI LAB/2_shift_register/Shift_Register_1/sr_test.v
// Project Name:  Shift_Register_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sr_test;

	// Inputs
	reg din;
	reg l;
	reg clk;
	reg reset;

	// Outputs
	wire dout;

	// Instantiate the Unit Under Test (UUT)
	sr uut (
		.din(din), 
		.l(l), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout)
	);
	
	always begin
		 #100 clk = ~clk;
		 end

	initial begin
		// Initialize Inputs
		din = 0;
		l = 0;
		clk = 0;
		reset = 0;
		
		
		
	

		// Wait 100 ns for global reset to finish
		#100;
		din=1;
		#100
		din=0;
		#100
		din=1;
		#100
		din=0;
		#100
		din=0;
		#100
		din=0;
		#100
		din=1;
		#100
		din=0;
		#100
		din=1;
		
        
		// Add stimulus here

	end
      
endmodule

