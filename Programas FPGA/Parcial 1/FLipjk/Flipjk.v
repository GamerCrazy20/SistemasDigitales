`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Albert Alfredo Matos Abreu
// 
// Create Date:    19:24:05 06/10/2023 
// Design Name:   
// Module Name:    Flipjk 
// Project Name: Parcial 1
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
module FlipJK(
    input wire clk,
    input wire J,
    input wire K,
    output reg Q,
    output Qn
    );

reg [26:0] count = 0;
reg clk_out;

always @(posedge clk) begin
    count <= count + 1;
    if (count == 49_999_999) begin
        count <= 0;
        clk_out <= ~clk_out;
        if (clk_out) begin
            if (J && ~K)
                Q <= 1'b1;
            else if (~J && K)
                Q <= 1'b0;
            else if (J && K)
                Q <= ~Q;
        end
    end
end

assign Qn = ~Q;

endmodule