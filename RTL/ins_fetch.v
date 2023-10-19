`timescale 1ns/1ps
`include "ins_mem.v"
module FET(
    input clk,
    input reset,
    output  [31:0]  instruction_code
);
reg [31:0] PC ;  

    
    
 INS_MEM instr_mem1(.PC(PC),.instruction_code(instruction_code));
 
 
 
    always @(posedge clk)
    begin
        if(reset == 1)  
        PC = 0;
        else
        PC = PC + 1; 
    end

endmodule
