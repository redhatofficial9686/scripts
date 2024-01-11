module down_async_reset_counter_tb;
reg clk, rst;
wire [31:0] count;
down_async_reset_counter uut (
.clk(clk),
.rst(rst),
.count(count)
);
always begin
#5 clk = ~clk;
end
initial begin
clk = 0;
rst = 1;
#10 rst = 0;
#200;
$finish;
end
endmodule
