module counter_tb;
    reg clk, reset;
    wire [3:0] count;

    Counter c(
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Every 2 time units clk goes from 0 to 1 to 0
    always #1 clk = ~clk;

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_tb);
        $monitor("[Time=%0t] clk=%0b reset=%0b count=%0b", $time, clk, reset, count);

        clk = 0; reset = 0; // At 0ns
        #2 reset=1; // set the value of count to 0
        #4 reset=0; // to increment the value of count

        #30 $finish;
    end
endmodule