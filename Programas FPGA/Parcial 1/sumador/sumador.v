`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Albert Alfredo Matos Abreu
// 
// Create Date:    11:23:35 06/10/2023 
// Design Name: 
// Module Name:    Sumador
// Project Name: 	Parcial 1
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
module Sumador(
	input a1,a2,b1,b2,
	output s1,s2,carry,sc
    );
	wire out1,out2,out3,out4,out5,out6;
	
	 //Variables para la negacion
	
	xor xor1(s1,a1,a2);
	and and1(out1,a1,a2);
	and and2(out2,out1,out3);
	xor xor2(out3,b1,b2);
	xor xor3(s2,out3,out1);
	and andn(out4,b1,b2);
	or or1(carry,out,out2);
	
	//Negacion de las variables

endmodule