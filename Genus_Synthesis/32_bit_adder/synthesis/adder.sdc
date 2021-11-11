set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design thirty_two_bit_adder

create_clock -name virtual_clk -period 10 -waveform {0 5}
set_clock_latency 0.15 virtual_clk
set_input_delay -clock virtual_clk -max 1.0 [get_ports {*}]
set_output_delay -clock virtual_clk -max 1.0 [get_ports {*}]

