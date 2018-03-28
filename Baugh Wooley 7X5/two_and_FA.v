`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:52 01/29/2018 
// Design Name: 
// Module Name:    two_and_FA 
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
module two_and_FA(input A,B,C,D,cin,
    output cout ,sum
    );
wire and1,and2;
assign and1 = A&B;
assign and2 = C&D;
assign sum = and1^and2^cin;
assign cout = (and1 & and2 ) | (and1 & cin ) | (and2 & cin);

endmodule
