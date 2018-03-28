`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:59 01/14/2018 
// Design Name: 
// Module Name:    rippleCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module rippleCounter(
    input up,
    input reset,
    input clk,
    output reg [3:0] out
    );
	
	wire [3:0] temp;
	JKff ff0(clk    , 1'b1, 1'b1, reset, temp[0], );
	JKff ff1(temp[0], 1'b1, 1'b1, reset, temp[1], );
	JKff ff2(temp[1], 1'b1, 1'b1, reset, temp[2], );
	JKff ff3(temp[2], 1'b1, 1'b1, reset, temp[3], );
	
	initial begin
	//temp <= 4'b0;
	end
	
	always @ (posedge clk) begin
	
	$monitor(" time = %g || temp = %b, output = %b \n", $time, temp, out);
	
		if(~reset) begin
			if(up == 1'b1)
				out <= temp;
			else out <= ~temp;
		end else out = 4'b0;
	end
	
endmodule
