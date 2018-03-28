`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:35 01/29/2018 
// Design Name: 
// Module Name:    two_and_T_FA 
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
module two_and_T_FA(input A,B,C,D,T,cin,
    output cout ,sum
    );
wire and1,and2,xor1;
assign and1 = A&B;
assign and2 = C&D;
assign xor1 = and1 ^ T;
assign sum = and2^xor1^cin;
assign cout = (and2 & xor1 ) | (and2 & cin ) | (xor1 & cin);

endmodule
