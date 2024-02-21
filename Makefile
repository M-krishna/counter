counter: counter.v counter_tb.v
	iverilog -o counter.vvp counter.v counter_tb.v
	vvp counter.vvp

clean:
	rm -rf counter.vvp