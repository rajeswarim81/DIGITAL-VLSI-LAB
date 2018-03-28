 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:13 01/14/2018 
// Design Name: 
// Module Name:    JKff 
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
module JKff(
		input clk,
		input J, 
		input K,
		input reset,
		output Q,
		output Q_
    );

reg Q;

assign Q_ = ~Q;

initial $monitor("ff triggered J, K = %b", J);

always@(negedge clk) 
	if(~reset) begin
		Q <= (J && Q_) || ((~K) && Q);
	end else begin
		Q <= 0;
	end

endmodule
