module down_async_reset_counter (
input wire clk,
input wire rst,
output reg [31:0] count
);
always @(posedge clk or posedge rst) begin
if (rst) begin
count <= 0;
end else begin
count <= count - 1;
end
end
endmodule
