`timescale 1ns/1ps
module ALU(
input [31:0] in1,
input [31:0] in2,
input [2:0] f3,
input [6:0] f7,
input [6:0] opcode,
output reg [31:0] alu_result,
output zero_flag);
parameter ADD=17'b00000000000110011, SUB=17'b01000000000110011, XOR=17'b00000001000110011, OR=17'b00000001100110011, AND=17'b00000001110110011, SLL=17'b00000000010110011, SRL=17'b00000001010110011,
SRA=17'b01000001010110011, SLT=17'b00000000100110011;

always @(*) begin

case({f7,f3,opcode}) 

ADD: alu_result = in1 + in2;
SUB: alu_result = in1 - in2;
XOR: alu_result = in1 ^ in2;
OR: alu_result = in1 | in2;
AND: alu_result = in1 & in2;
SLL: alu_result = in1 << in2;
SRL: alu_result = in1 >> in2;
SRA: alu_result = in1 >>> in2;
SLT: alu_result = (in1 < in2)?1:0;

endcase end
assign zero_flag = (alu_result)?1'b0:1'b1;
endmodule
