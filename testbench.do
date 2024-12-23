vcom -2008 -work work {C:\Users\Jeffrey Owusu\Desktop\School Stuff\DLD\LearningActivity7\eeprom_memory.vhd}
vcom -2008 -work work {C:\Users\Jeffrey Owusu\Desktop\School Stuff\DLD\LearningActivity7\clock_reset_generation.vhd}
vcom -2008 -work work {C:\Users\Jeffrey Owusu\Desktop\School Stuff\DLD\LearningActivity7\simple_cpu_testbench.vhd}

vsim simple_cpu_testbench
add wave -position insertpoint sim:/simple_cpu_testbench/address_bus
add wave -position insertpoint sim:/simple_cpu_testbench/data_bus
add wave -position insertpoint sim:/simple_cpu_testbench/clock
add wave -position insertpoint sim:/simple_cpu_testbench/r
add wave -position insertpoint sim:/simple_cpu_testbench/w
add wave -position insertpoint sim:/simple_cpu_testbench/b2v_simple_cpu_0/b2v_inst/b2v_PC/q
add wave -position insertpoint sim:/simple_cpu_testbench/b2v_simple_cpu_0/b2v_inst/b2v_MAR/q
add wave -position insertpoint sim:/simple_cpu_testbench/b2v_simple_cpu_0/b2v_inst/b2v_MBR/q
add wave -position insertpoint sim:/simple_cpu_testbench/b2v_simple_cpu_0/b2v_inst/b2v_IR/q
add wave -position insertpoint sim:/simple_cpu_testbench/b2v_simple_cpu_0/b2v_inst/b2v_D0/q
add wave -position insertpoint sim:/simple_cpu_testbench/b2v_memory_0/memory_contents(31)

run 100000 ns