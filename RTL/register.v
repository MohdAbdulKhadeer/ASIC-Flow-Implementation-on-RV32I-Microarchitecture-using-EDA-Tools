`timescale 1ns/1ps
module REG(
input clk,
input reset,
input [31:0]write_data,
input [4:0] write_add,
input [4:0] R1_add,
input [4:0] R2_add,
output [31:0] reg1,
output [31:0] reg2);

reg [31:0] reg_bank [31:0];

always @(posedge clk ) begin
if(reset) begin
reg_bank[0] = 32'd0;
reg_bank[1] = 32'd1;
reg_bank[2] = 32'd2;
reg_bank[3] = 32'd3;
reg_bank[4] = 32'd4;
reg_bank[5] = 32'd5;
reg_bank[6] = 32'd6;
reg_bank[7] = 32'd7;
reg_bank[8] = 32'd8;
reg_bank[9] = 32'd9;
reg_bank[10] = 32'd10;
reg_bank[11] = 32'd11;
reg_bank[12] = 32'd12;
reg_bank[13] = 32'd13;
reg_bank[14] = 32'd14;
reg_bank[15] = 32'd15;
reg_bank[16] = 32'd16;
reg_bank[17] = 32'd17;
reg_bank[18] = 32'd18;
reg_bank[19] = 32'd19;
reg_bank[20] = 32'd20;
reg_bank[21] = 32'd21;
reg_bank[22] = 32'd22;
reg_bank[23] = 32'd23;
reg_bank[24] = 32'd24;
reg_bank[25] = 32'd25;
reg_bank[26] = 32'd26;
reg_bank[27] = 32'd27;
reg_bank[28] = 32'd28;
reg_bank[29] = 32'd29;
reg_bank[30] = 32'd30;
reg_bank[31] = 32'd31;  end
else begin
reg_bank[write_add] = write_data; end

end

assign reg1 = reg_bank[R1_add];
assign reg2 = reg_bank[R2_add];


endmodule
