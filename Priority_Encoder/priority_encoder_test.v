`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:31:45 01/23/2018
// Design Name:   priority_encoder
// Module Name:   G:/Rajeswari Mahapatra/6th Sem EC/DIG VLSI LAB/4_priority encoder/PriorityEncoder/priority_encoder_test.v
// Project Name:  PriorityEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priority_encoder_test;

	// Inputs
	reg [3:0] d;

	// Outputs
	wire [1:0] y;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	priority_encoder uut (
		.y(y), 
		.v(v), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		d = 4'b000;

		// Wait 100 ns for global reset to finish
		#100
		d=4'b0000;
		#100
		d=4'b1000;
		#100
		d=4'b0100;
      #100
		d=4'b0010;
		#100
		d=4'b0001;
		// Add stimulus here

	end
      
endmodule

