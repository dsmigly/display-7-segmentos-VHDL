
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name segmentos -dir "C:/Users/081160008/segmentos/planAhead_run_1" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "C:/Users/081160008/Desktop/pin.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {pinagem.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top pinagem $srcset
add_files [list {C:/Users/081160008/Desktop/pin.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
