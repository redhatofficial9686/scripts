set_attr lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib/
set_attr hdl_search_path /home/AIET/Desktop/DV/
set_attr library {slow.lib}
read_hdl {RAM.v}
elaborate
report timing >and_gate_timing.rep
report power >and_gate_power.rep
report area >and_gate_cell.rep
syn_generic 
write_hdl
syn_map 
write_hdl
report_area
syn
syn_opt
write_hdl
report_area 
write_hdl > syn.v
write_sdc > syn.sdc
report_area
report_gates
report_gates -power 
report_timing
gui_show

