`timescale 1ns/1ps
module INS_MEM(
    input [31:0] PC,
    output [31:0] instruction_code
);
    reg [31:0] Memory [6:0]; 

    
    assign instruction_code = Memory[PC];

    
   always @(*)
    begin
     
         
          Memory[0] = 32'h00940333; // ADD
          
            Memory[1] = 32'h413903b3; // SUB
            
            Memory[2] = 32'h017b4e33; // XOR
           
            Memory[3] = 32'h00f768b3; // OR
                        
             Memory[4] = 32'h00d67fb3; // AND
            
            Memory[5] = 32'h019c1eb3; // SLL
           
            Memory[6] = 32'h01bd5f33; // SRL
           
      
    end
endmodule
