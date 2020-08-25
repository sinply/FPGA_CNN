onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "D:/ProgramData/Xilinx/SDx/2016.4/Vivado/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib design_1_opt

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
