module adder_3bit_test;
reg [2:0] a;
reg [2:0] b;
wire [2:0] s;
wire cout;
adder_three_bit test_adder (
.sum(s),
.cout(cout),
.a(a),
.b(b)
);
initial begin
a = 3'b000;
b = 3'b001;
#30;
a = 3'b001;
b = 3'b001;
#30;
a = 3'b010;
b = 3'b001;
#30;
a = 3'b100;
b = 3'b101;
#30;
a = 3'b100;
b = 3'b101;
#30;
$finish;
end
endmodule
