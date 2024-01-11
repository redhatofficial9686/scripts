
module adder_four_bit(
output [2:0] sum,
output reg cout,
input [2:0] a,
input [2:0] b
);
wire c1, c2, c3;
full_3 ad0( .a(a[0]), .b(b[0]), .cin(0), .s(sum[0]), .cout(c1) );
full_3 ad1( .a(a[1]), .b(b[1]), .cin(c1), .s(sum[1]), .cout(c2) );
full_3 ad2( .a(a[2]), .b(b[2]), .cin(c2), .s(sum[2]), .cout(c3) );

assign cout = c3;
endmodule
module full_3(
input a,
input b,
input cin,
output s,
output cout
);
assign s = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

