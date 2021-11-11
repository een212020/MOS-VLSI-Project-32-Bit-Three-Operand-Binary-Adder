# Cadence Genus(TM) Synthesis Solution, Version 19.12-s121_1, built Dec  3 2019 15:07:17

# Date: Sat Nov 06 22:13:47 2021
# Host: maxwell1 (x86_64 w/Linux 4.9.0-4-amd64) (1core*21cpus*1physical cpu*Intel(R) Xeon(R) CPU X5650 @ 2.67GHz 12288KB)
# OS:   Unsupported OS as /etc does not have release info

source ./synthesis/adder.tcl
report_power
gui_show
report_timing
report_timing -unconstrained
exit
