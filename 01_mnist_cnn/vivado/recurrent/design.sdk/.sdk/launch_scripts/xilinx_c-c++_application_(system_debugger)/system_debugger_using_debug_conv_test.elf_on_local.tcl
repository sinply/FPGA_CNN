connect -url tcp:127.0.0.1:3121
source E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/vivado/design.sdk/cnn/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A" && level==0} -index 1
fpga -file E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/vivado/design.sdk/cnn/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
loadhw E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/vivado/design.sdk/cnn/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
dow E:/Exercise/FPGA/FPGA_CNN/01_mnist_cnn/vivado/design.sdk/conv_test/Debug/conv_test.elf
bpadd -addr &main
