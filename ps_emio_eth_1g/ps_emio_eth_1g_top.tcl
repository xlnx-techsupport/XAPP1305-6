set impl_const ./constrs.xdc
set ui_name bd_bce4905f.ui
set device xczu9eg-ffvb1156-2-i
set proj_dir ps_emio_eth_1g 
set design_top ps_emio_eth_1g


create_project -name ${design_top} -force -dir "./${proj_dir}" -part ${device}

source ${design_top}_bd.tcl

add_files -fileset constrs_1 -norecurse ./${impl_const}
set_property used_in_synthesis true [get_files ./${impl_const}]

make_wrapper -files [get_files ./${proj_dir}/${design_top}.srcs/sources_1/bd/${design_top}/${design_top}.bd] -top

add_files -norecurse ./${proj_dir}/${design_top}.srcs/sources_1/bd/${design_top}/hdl/${design_top}_wrapper.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

validate_bd_design
# save_bd_design
# close_bd_design system

