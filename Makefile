fileName=counter.vcd
counter: counter.v counter_tb.v
	iverilog -o counter.vvp counter.v counter_tb.v
	vvp counter.vvp

show:
	gtkwave ${fileName}

clean:
	rm -rf counter.vvp