set search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs"
set_attribute lib_search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs"
set_attribute hdl_search_path "./rtl/"
set_attribute library "uk65lscllmvbbr_100c25_tc_ccs.lib"

read_hdl {thirty_two_bit_adder.v base_logic.v black_cell.v buffer.v FA.v grey_cell.v} 



elaborate thirty_two_bit_adder
check_design -unresolved
read_sdc ./synthesis/adder.sdc
synthesize -to_mapped -effort medium
write_hdl > ./typical/adder_netlist.v
write_sdc > ./typical/adder_sdc.sdc
write_sdf -timescale ns -nonegchecks -recrem split -edges check_edge -setuphold split > ./typical/delays.sdf
