`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Albert Alfredo Matos Abreu
// 
// Create Date:    11:23:35 06/10/2023 
// Design Name: 
// Module Name:    Contador 0 - 15
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



module Contador_LEDs(
    input wire clk,
    output wire [3:0] leds
);

reg [3:0] count = 4'b0000;
reg [49:0] div = 50'd0;
reg clk_1hz;

always @(posedge clk) begin
    div <= div + 1;
    if (div == 50'd99_999_999) begin
        div <= 0;
        clk_1hz <= ~clk_1hz;
        if (clk_1hz)
            count <= count + 1;
    end
end

assign leds = count;

endmodule

