`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:39:54 01/29/2018 
// Design Name: 
// Module Name:    one_and_FA 
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
module one_and_FA(input A,B,s,cin,
    output cout ,sum
    );
wire and1;
assign and1 = A&B;
assign sum = and1^s^cin;
assign cout = (and1 & s ) | (and1 & cin ) | (s & cin);

endmodule
