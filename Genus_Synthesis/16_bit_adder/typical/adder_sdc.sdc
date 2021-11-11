# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.12-s121_1 on Thu Nov 11 23:32:44 IST 2021

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design Adder_16

create_clock -name "virtual_clk" -period 10.0 -waveform {0.0 5.0} 
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[15]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[14]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[13]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[12]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[11]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[10]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[9]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[8]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[7]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[6]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[5]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[4]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[3]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[2]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[1]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {a[0]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[15]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[14]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[13]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[12]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[11]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[10]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[9]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[8]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[7]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[6]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[5]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[4]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[3]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[2]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[1]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {b[0]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[15]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[14]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[13]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[12]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[11]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[10]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[9]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[8]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[7]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[6]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[5]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[4]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[3]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[2]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[1]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {c[0]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports Cin]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[16]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[15]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[14]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[13]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[12]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[11]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[10]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[9]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[8]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[7]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[6]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[5]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[4]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[3]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[2]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[1]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports {S[0]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay -max 1.0 [get_ports Cout]
set_wire_load_mode "top"
set_clock_latency  0.15 [get_clocks virtual_clk]
