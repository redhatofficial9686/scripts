module up_counter_async_reset (
input wire clk,
input wire rst,
output reg [31:0] count
);
always @(posedge clk or posedge rst) begin
if (rst) begin
count <= 0;
end else begin
count <= count + 1;
end
end
endmodule
