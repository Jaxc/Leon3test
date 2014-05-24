create_project  ./vivado/ -part  -force
set_property top  [get_filesets sim_1]
set_property target_language verilog [current_project]
# Add files for simulation and synthesis
source ./compile.vivado
add_files -fileset sim_1 
add_files -fileset sim_1 prom.srec ram.srec
# Read board specific constraints
# Board, part and design properties
set_property target_simulator ModelSim [current_project]
set_property top_lib work [current_fileset]
set_property top_arch rtl [current_fileset]
set_property top  [current_fileset]
