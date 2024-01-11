module async_reset_up_counter (
input Clk,
input reset,
output reg [3:0] Count
);
always @(posedge Clk or posedge reset) begin
if (reset) begin
Count <= 0;
end else begin
if (Count == 15)
Count <= 0;
else
Count <= Count + 1;
end
end
endmodule
