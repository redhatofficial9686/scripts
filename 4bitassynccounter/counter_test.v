module down_async_reset_counter_tb;
reg Clk;
reg reset;
wire [3:0] Count;
down_async_reset_counter uut (
.Clk(Clk),
.reset(reset),
.Count(Count)
);
initial begin
Clk = 0;
reset = 0;
#10;
reset = 1;
#10;
reset = 0;
#100;
$finish;
end
always #5 Clk = ~Clk;
endmodule
