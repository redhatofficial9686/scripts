module testbench;
reg clk, rst;
wire [31:0] count;
up_counter_async_reset uut (
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
