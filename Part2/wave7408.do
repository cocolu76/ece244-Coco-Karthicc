# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in part2.v to working dir
# could also have multiple verilog files
vlog part2.v

#load simulation using 7408 as the top level simulation module
vsim v7408

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

# case 0 :00
#set input values using the force command, signal names need to be in {} brackets
force {pin1} 0
force {pin2} 0
force {pin4} 0
force {pin5} 0
#run simulation for a few ns
run 40ns


force {pin1} 1
force {pin2} 0
force {pin4} 0
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 1
force {pin4} 0
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 1
force {pin2} 1
force {pin4} 0
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 0
force {pin4} 1
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 1
force {pin2} 0
force {pin4} 1
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 1
force {pin4} 1
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 1
force {pin2} 1
force {pin4} 1
force {pin5} 0
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 0
force {pin4} 0
force {pin5} 1
#run simulation for a few ns
run 40ns


force {pin1} 1
force {pin2} 0
force {pin4} 0
force {pin5} 1
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 1
force {pin4} 0
force {pin5} 1
#run simulation for a few ns
run 40ns

force {pin1} 1
force {pin2} 1
force {pin4} 0
force {pin5} 1
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 0
force {pin4} 1
force {pin5} 1
#run simulation for a few ns
run 40ns

force {pin1} 1
force {pin2} 0
force {pin4} 1
force {pin5} 1
#run simulation for a few ns
run 40ns

force {pin1} 0
force {pin2} 1
force {pin4} 1
force {pin5} 1
#run simulation for a few ns
run 40ns

force {pin1} 1
force {pin2} 1
force {pin4} 1
force {pin5} 1
#run simulation for a few ns
run 40ns
