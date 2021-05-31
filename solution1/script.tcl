############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project intx-fpga
set_top add
add_files intx-fpga/solution1/adder.cpp
add_files intx-fpga/solution1/adder.h
add_files intx-fpga/solution1/int128.hpp
add_files intx-fpga/solution1/intx.hpp
add_files -tb intx-fpga/solution1/test.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./intx-fpga/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
