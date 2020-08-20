create_project prj -part xc7z020clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
source "E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/hls/pool_core/solution1/syn/verilog/Pool_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips Pool_ap_fadd_3_full_dsp_32]]
}
source "E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/hls/pool_core/solution1/syn/verilog/Pool_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips Pool_ap_fcmp_0_no_dsp_32]]
}
source "E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/hls/pool_core/solution1/syn/verilog/Pool_ap_fdiv_14_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips Pool_ap_fdiv_14_no_dsp_32]]
}
source "E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/hls/pool_core/solution1/syn/verilog/Pool_ap_sitofp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips Pool_ap_sitofp_4_no_dsp_32]]
}
