
`timescale 1ns / 1ps
`include "g:\Mult_syn.v"
`define length 16

module behv_multiplier_testbench;

reg [15:0] A;
reg [15:0] B;
wire [31:0] Res;

reg clk;
reg rst;


always
	#50 clk = ~ clk;


initial
begin
	clk = 0;
	A = 16'd6;
	B = 16'd10;
	rst = 1;
	#500 rst = 0;
end

behv_multiplier multiplier(clk,rst,A,B,Res);

endmodule
