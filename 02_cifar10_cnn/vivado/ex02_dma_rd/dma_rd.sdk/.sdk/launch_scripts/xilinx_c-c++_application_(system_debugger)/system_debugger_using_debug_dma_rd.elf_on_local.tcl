connect -url tcp:127.0.0.1:3121
source E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex02_dma_rd/dma_rd.sdk/hw_dma/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A" && level==0} -index 1
fpga -file E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex02_dma_rd/dma_rd.sdk/hw_dma/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
loadhw E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex02_dma_rd/dma_rd.sdk/hw_dma/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT1 210203368853A"} -index 0
dow E:/Exercise/FPGA/FPGA_CNN/02_cifar10_cnn/vivado/ex02_dma_rd/dma_rd.sdk/dma_rd/Debug/dma_rd.elf
bpadd -addr &main
