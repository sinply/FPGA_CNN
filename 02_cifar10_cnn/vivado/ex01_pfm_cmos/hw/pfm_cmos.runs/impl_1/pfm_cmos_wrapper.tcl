proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.cache/wt [current_project]
  set_property parent.project_path E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.xpr [current_project]
  set_property ip_repo_paths {
  E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.ipdefs/ip/interface/xilinx.com_user_pldma_rgbin_1.0
  E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.ipdefs/ip/xilinx.com_user_bayer2rgb_1.0
  E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.ipdefs/ip/xilinx.com_user_gpio_mux_1.0
  E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.ipdefs/ip/xilinx.com_user_hdmi_tx_1.0
  E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.ipdefs/ip/xilinx.com_user_pldma_rgbin_1.0
  E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.ipdefs/ip/xilinx.com_user_pldma_rgbout_1.0
} [current_project]
  set_property ip_output_repo E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.runs/synth_1/pfm_cmos_wrapper.dcp
  read_xdc -prop_thru_buffers -ref pfm_cmos_clk_wiz_0_0 -cells inst e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0_board.xdc]
  read_xdc -ref pfm_cmos_clk_wiz_0_0 -cells inst e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_0_0/pfm_cmos_clk_wiz_0_0.xdc]
  read_xdc -ref fifo_16384x32_8192x64 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/hdl/ip/fifo_16384x32_8192x64/fifo_16384x32_8192x64/fifo_16384x32_8192x64.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/hdl/ip/fifo_16384x32_8192x64/fifo_16384x32_8192x64/fifo_16384x32_8192x64.xdc]
  read_xdc -prop_thru_buffers -ref pfm_cmos_clk_wiz_1_0 -cells inst e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0_board.xdc]
  read_xdc -ref pfm_cmos_clk_wiz_1_0 -cells inst e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_clk_wiz_1_0/pfm_cmos_clk_wiz_1_0.xdc]
  read_xdc -ref fifo_8192x64_16384x32 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/hdl/ipcore/fifo_8192x64_16384x32/fifo_8192x64_16384x32.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/hdl/ipcore/fifo_8192x64_16384x32/fifo_8192x64_16384x32.xdc]
  read_xdc -prop_thru_buffers -ref pfm_cmos_rst_ps7_0_200M_4 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_200M_4/pfm_cmos_rst_ps7_0_200M_4_board.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_200M_4/pfm_cmos_rst_ps7_0_200M_4_board.xdc]
  read_xdc -ref pfm_cmos_rst_ps7_0_200M_4 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_200M_4/pfm_cmos_rst_ps7_0_200M_4.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_200M_4/pfm_cmos_rst_ps7_0_200M_4.xdc]
  read_xdc -prop_thru_buffers -ref pfm_cmos_rst_ps7_0_100M_5 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_100M_5/pfm_cmos_rst_ps7_0_100M_5_board.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_100M_5/pfm_cmos_rst_ps7_0_100M_5_board.xdc]
  read_xdc -ref pfm_cmos_rst_ps7_0_100M_5 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_100M_5/pfm_cmos_rst_ps7_0_100M_5.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_rst_ps7_0_100M_5/pfm_cmos_rst_ps7_0_100M_5.xdc]
  read_xdc -ref pfm_cmos_processing_system7_0_1 -cells inst e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_processing_system7_0_1/pfm_cmos_processing_system7_0_1.xdc
  set_property processing_order EARLY [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_processing_system7_0_1/pfm_cmos_processing_system7_0_1.xdc]
  read_xdc E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/constrs_1/new/pfm_cmos.xdc
  read_xdc -ref fifo_16384x32_8192x64 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/hdl/ip/fifo_16384x32_8192x64/fifo_16384x32_8192x64/fifo_16384x32_8192x64_clocks.xdc
  set_property processing_order LATE [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbin_0_0/hdl/ip/fifo_16384x32_8192x64/fifo_16384x32_8192x64/fifo_16384x32_8192x64_clocks.xdc]
  read_xdc -ref fifo_8192x64_16384x32 -cells U0 e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/hdl/ipcore/fifo_8192x64_16384x32/fifo_8192x64_16384x32_clocks.xdc
  set_property processing_order LATE [get_files e:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex01_pfm_cmos/hw/pfm_cmos.srcs/sources_1/bd/pfm_cmos/ip/pfm_cmos_pldma_rgbout_0_2/hdl/ipcore/fifo_8192x64_16384x32/fifo_8192x64_16384x32_clocks.xdc]
  link_design -top pfm_cmos_wrapper -part xc7z020clg400-1
  write_hwdef -file pfm_cmos_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force pfm_cmos_wrapper_opt.dcp
  catch { report_drc -file pfm_cmos_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force pfm_cmos_wrapper_placed.dcp
  catch { report_io -file pfm_cmos_wrapper_io_placed.rpt }
  catch { report_utilization -file pfm_cmos_wrapper_utilization_placed.rpt -pb pfm_cmos_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file pfm_cmos_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force pfm_cmos_wrapper_routed.dcp
  catch { report_drc -file pfm_cmos_wrapper_drc_routed.rpt -pb pfm_cmos_wrapper_drc_routed.pb -rpx pfm_cmos_wrapper_drc_routed.rpx }
  catch { report_methodology -file pfm_cmos_wrapper_methodology_drc_routed.rpt -rpx pfm_cmos_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file pfm_cmos_wrapper_timing_summary_routed.rpt -rpx pfm_cmos_wrapper_timing_summary_routed.rpx }
  catch { report_power -file pfm_cmos_wrapper_power_routed.rpt -pb pfm_cmos_wrapper_power_summary_routed.pb -rpx pfm_cmos_wrapper_power_routed.rpx }
  catch { report_route_status -file pfm_cmos_wrapper_route_status.rpt -pb pfm_cmos_wrapper_route_status.pb }
  catch { report_clock_utilization -file pfm_cmos_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force pfm_cmos_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force pfm_cmos_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile pfm_cmos_wrapper.bit 
  catch { write_sysdef -hwdef pfm_cmos_wrapper.hwdef -bitfile pfm_cmos_wrapper.bit -meminfo pfm_cmos_wrapper.mmi -file pfm_cmos_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

