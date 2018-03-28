`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:23 01/29/2018 
// Design Name: 
// Module Name:    mult 
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
module mult(input [6:0] A,
            input [4:0] B,
				input T,
				output [11:0] out
    );
wire [5:0] s1,s2,s3,s4,s5;
wire [5:0] c1,c2,c3,c4,c5;
wire and1,and0;
wire xor1;

assign and0 = A[0] & B[0];
assign and1 = A[6] & B[4];


two_and_HA  a11 ( .A(A[1]) , .B(B[0]) , .C(A[0]) , .D(B[1]) , .cout(c1[0]) , .sum(s1[0]) );
two_and_HA  a12 ( .A(A[2]) , .B(B[0]) , .C(A[1]) , .D(B[1]) , .cout(c1[1]) , .sum(s1[1]) );
two_and_HA  a13 ( .A(A[3]) , .B(B[0]) , .C(A[2]) , .D(B[1]) , .cout(c1[2]) , .sum(s1[2]) );
two_and_FA  a14 ( .A(A[4]) , .B(B[0]) , .C(A[3]) , .D(B[1]) , .cout(c1[3]) , .sum(s1[3]) , .cin(T));
two_and_HA  a15 ( .A(A[5]) , .B(B[0]) , .C(A[4]) , .D(B[1]) , .cout(c1[4]) , .sum(s1[4]) );
two_and_T_FA a16( .A(A[6]) , .B(B[0]) , .C(A[5]) , .D(B[1]) , .cout(c1[5]) , .sum(s1[5]) , .T(T), .cin(T));

one_and_FA a21  ( .A(A[0]) , .B(B[2]) , .s(s1[1]) ,  .cin(c1[0])   , .cout(c2[0]) , .sum(s2[0]) );
one_and_FA a22  ( .A(A[1]) , .B(B[2]) , .s(s1[2]) ,  .cin(c1[1])   , .cout(c2[1]) , .sum(s2[1]) );
one_and_FA a23  ( .A(A[2]) , .B(B[2]) , .s(s1[3]) ,  .cin(c1[2])   , .cout(c2[2]) , .sum(s2[2]) );
one_and_FA a24  ( .A(A[3]) , .B(B[2]) , .s(s1[4]) ,  .cin(c1[3])   , .cout(c2[3]) , .sum(s2[3]) );
one_and_FA a25  ( .A(A[4]) , .B(B[2]) , .s(s1[5]) ,  .cin(c1[4])   , .cout(c2[4]) , .sum(s2[4]) );
two_and_T_FA a26( .A(A[6]) , .B(B[1]) , .C(A[5])  , .D(B[2])      , .cout(c2[5]) , .sum(s2[5]) , .T(T), .cin(c1[5]));

one_and_FA  a31 ( .A(A[0]) , .B(B[3]) , .s(s2[1]) ,  .cin(c2[0])   , .cout(c3[0]) , .sum(s3[0]) );
one_and_FA a32  ( .A(A[1]) , .B(B[3]) , .s(s2[2]) ,  .cin(c2[1])   , .cout(c3[1]) , .sum(s3[1]) );
one_and_FA  a33 ( .A(A[2]) , .B(B[3]) , .s(s2[3]) ,  .cin(c2[2])   , .cout(c3[2]) , .sum(s3[2]) );
one_and_FA  a34 ( .A(A[3]) , .B(B[3]) , .s(s2[4]) ,  .cin(c2[3])   , .cout(c3[3]) , .sum(s3[3]) );
one_and_FA  a35 ( .A(A[4]) , .B(B[3]) , .s(s2[5]) ,  .cin(c2[4])   , .cout(c3[4]) , .sum(s3[4]) );
two_and_T_FA a36( .A(A[6]) , .B(B[2]) , .C(A[5])  , .D(B[3])      , .cout(c3[5]) , .sum(s3[5]) , .T(T), .cin(c2[5]));

two_and_t_Fa_s a41  ( .A(A[0]) , .B(B[4]) , .s(s3[1]) ,  .cin(c3[0])   , .cout(c4[0]) , .sum(s4[0]), .T(T) );
two_and_t_Fa_s a42  ( .A(A[1]) , .B(B[4]) , .s(s3[2]) ,  .cin(c3[1])   , .cout(c4[1]) , .sum(s4[1]), .T(T) );
two_and_t_Fa_s a43  ( .A(A[2]) , .B(B[4]) , .s(s3[3]) ,  .cin(c3[2])   , .cout(c4[2]) , .sum(s4[2]), .T(T) );
two_and_t_Fa_s a44  ( .A(A[3]) , .B(B[4]) , .s(s3[4]) ,   .cin(c3[3])   , .cout(c4[3]) , .sum(s4[3]), .T(T) );
two_and_t_Fa_s a45  ( .A(A[4]) , .B(B[4]) , .s(s3[5]) ,  .cin(c3[4])   , .cout(c4[4]) , .sum(s4[4]), .T(T) );
two_xor_fa   a46  ( .A(A[6]) , .B(B[3]) , .C(A[5])  , .D(B[4])      , .cout(c4[5]) , .sum(s4[5]) , .T(T), .cin(c3[5]));

HA a51 ( .A(s4[1]) , .B(c4[0]) , .cout(c5[0]) ,.sum(s5[0]) );
FA a52 ( .A(s4[2]) , .B(c4[1]) , .cin(c5[0])  ,.cout(c5[1]) ,.sum(s5[1]) );
FA a53 ( .A(s4[3]) , .B(c4[2]) , .cin(c5[1])  ,.cout(c5[2]) ,.sum(s5[2]) );
FA a54 ( .A(s4[4]) , .B(c4[3]) , .cin(c5[2])  ,.cout(c5[3]) ,.sum(s5[3]) );
FA a55 ( .A(s4[5]) , .B(c4[4]) , .cin(c5[3])  ,.cout(c5[4]) ,.sum(s5[4]) );
FA a56 ( .A(and1)  , .B(c4[5]) , .cin(c5[4])  ,.cout(c5[5]) ,.sum(s5[5]) );

assign xor1 = c5[5] ^ T;

assign out = {xor1,s5,s4[0],s3[0],s2[0],s1[0],and0};

endmodule  
