if [file exists "work"] {vdel -all}
vlib work

vcom -2008 sub.vhd wrapper.vhd testbench.vhd
vsim -gui work.testbench(test) -voptargs=+acc

add wave -position end  sim:/testbench/sA
add wave -position end  sim:/testbench/dut/uut/iA
add wave -position end  sim:/testbench/dut/uut/state

run 250 ns

quit