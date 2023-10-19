`timescale 1ns/1ps
module DEC(
input [31:0] instruction_code,
output wire [4:0] rs1,
output wire [4:0] rs2,
output wire [4:0] rd,
output wire [2:0] f3,
output wire [6:0] f7,
output wire [6:0] opcode);


assign rs1 = instruction_code[19:15];
assign rs2 = instruction_code[24:20];
assign rd = instruction_code[11:7];
assign f3 = instruction_code[14:12];
assign f7 = instruction_code[31:25];
assign opcode = instruction_code[6:0];

endmodule

