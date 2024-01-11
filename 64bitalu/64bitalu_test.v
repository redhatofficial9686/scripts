module alu_64bit_tb_case;
reg [63:0] a;
reg [63:0] b;
reg [2:0] f;
wire [63:0] y;
alu_64bit_case test2 (
.y(y),
.a(a),
.b(b),
.f(f)
);
initial begin
a = 64'h0000000000000000;
b = 64'hFFFFFFFFFFFFFFFF;
#10 f = 3'b000;
#10 f = 3'b001;
#10 f = 3'b010;
#10 f = 3'b100;
end
initial #50 $finish;
end
endmodule
