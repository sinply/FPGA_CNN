############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pool_core_new
set_top Pool
add_files pool_core_new/pool_core.cpp
add_files pool_core_new/pool_core.h
add_files -tb pool_core_new/main.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./pool_core_new/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -rtl verilog -format ip_catalog
