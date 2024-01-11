module down_async_reset_counter (
Clk,
reset,
Count
);
input Clk, reset;
output [3:0] Count;
reg [3:0] Count;
always @(posedge(Clk) or posedge(reset)) begin
if (reset == 1)
Count <= 0;
else if (Count == 0)
Count <= 15;
else
Count <= Count - 1;
end
endmodule
