`timescale 1ns/1ps
`include "ins_fetch.v"
`include "decoder.v"
`include "register.v"
`include "alu.v"
module TOPG(
input clk,
input reset,
output [31:0] alu_result);

wire [31:0] instruction_code;
FET m1(.clk(clk),.reset(reset),.instruction_code(instruction_code));


wire [4:0]rs1;
wire [4:0]rs2;
wire [4:0]rd;
wire [2:0]f3;
wire [6:0]f7;
wire [6:0]opcode;

DEC m2(.instruction_code(instruction_code),.rs1(rs1),.rs2(rs2),.rd(rd),.f3(f3),.f7(f7),.opcode(opcode));

wire [31:0]write_data;
wire [31:0]regdata1;
wire [31:0]regdata2;

REG m3(.clk(clk),.reset(reset),.write_data(write_data),.write_add(rd),.R1_add(rs1),.R2_add(rs2),.reg1(regdata1),.reg2(regdata2));


//wire [31:0]alu_result;
wire zero_flag;
ALU m4(.in1(regdata1),.in2(regdata2),.f3(f3),.f7(f7),.opcode(opcode),.alu_result(write_data),.zero_flag(zero_flag));

assign alu_result = write_data;

endmodule
