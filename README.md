# 4-bit Counter with Synchronous reset

Counts from 0 to 15 (0 to 1111) at each clock cycle and at the positive edge of the clock. In this case, the clock goes from 0 to 1 at each time unit (1, 3, 5, 7 and so on)

Once the count reaches the MAX_VALUE(1111 or 15) it resets back to 0.

We can manually reset the value of count by setting the `reset` wire to 1

## How to run this?
You can use EDA Playground to run it online or if you want to run it locally,
* Install `icarus-verilog` compiler.
* Install `gtkwave` to see the results in waveform.
* `make counter` -> This will stdout the output
* `make show` -> This will open the generated VCD file in `gtkwave`

Tinker with the testbench file to see different outputs