module MEM_WBReg(
    input clk,
    input rst,
    input enReg,
    input RegWrite_in,
    input MemtoReg_in,
    input [31:0] RD_in,
    input [31:0] ALU_in,
    input [4:0] WN_in,
    output reg RegWrite_out,
    output reg MemtoReg_out,
    output reg [31:0] RD_out,
    output reg [31:0] ALU_out,
    output reg [4:0] WN_out
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        {RegWrite_out, MemtoReg_out, RD_out, ALU_out, WN_out} <= 0;
    end
    else if (enReg) begin
        RegWrite_out <= RegWrite_in;
        MemtoReg_out <= MemtoReg_in;
        RD_out <= RD_in;
        ALU_out <= ALU_in;
        WN_out <= WN_in;
    end
end

endmodule