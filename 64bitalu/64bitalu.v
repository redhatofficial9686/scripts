module alu_64bit_case (
output reg [63:0] y,
input [63:0] a,
input [63:0] b,
input [2:0] f
);
always @(*)
begin
case(f)
3'b000: y = a & b;
3'b001: y = a | b;
3'b010: y = ~(a & b);
3'b011: y = ~(a | b);
3'b100: y = a + b;
3'b101: y = a - b;
3'b110: y = a * b;
default: y = 64'bx;
endcase
end
endmodule
