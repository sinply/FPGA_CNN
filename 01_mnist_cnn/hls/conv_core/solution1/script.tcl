############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv_core
set_top Conv
add_files conv_core/conv_core.cpp
add_files conv_core/conv_core.h
add_files -tb conv_core/main.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./conv_core/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port -compiled_library_dir "D:/ProgramData/Xilinx/XLib10.7" -tool modelsim
export_design -rtl verilog -format ip_catalog
