// 4-bit counter example
module Counter (
    input clk, reset,
    output reg [3:0] count
);
    parameter MAX_COUNT_VALUE = 1111; // 15 in Decimal
    
    always @(posedge clk) begin
       if (reset) begin
        count <= 1'b0;
       end else begin
        if (count == MAX_COUNT_VALUE) begin
            count <= 1'b0;
        end else begin
            count <= count + 1'b1;
        end
       end
    end
endmodule