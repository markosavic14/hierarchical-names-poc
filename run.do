if [file exists "work"] {vdel -all}
vlib work

vcom -2008 sub.vhd top.vhd tb.vhd
vlog testbench.sv

vsim -gui work.testbench -voptargs=+acc

add wave -position end  sim:/testbench/a
add wave -position end  sim:/testbench/state_sv
add wave -position end  sim:/testbench/top_h/uut/iA
add wave -position end  sim:/testbench/top_h/uut/state

run 30 ns

quit