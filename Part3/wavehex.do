# set the working dir, where all compiled verilog goes
vlib work

# compile all verilog modules in part2.v to working dir
# could also have multiple verilog files
vlog part3.v

#load simulation using 7404 as the top level simulation module
vsim hex_decoder

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}



#case 0
force {c[0]} 0
force {c[1]} 0
force {c[2]} 0
force {c[3]} 0
run 40ns;

#case 1
force {c[0]} 1
force {c[1]} 0
force {c[2]} 0
force {c[3]} 0
run 40ns;

#case 2
force {c[0]} 0
force {c[1]} 1
force {c[2]} 0
force {c[3]} 0
run 40ns;

#case 3
force {c[0]} 1
force {c[1]} 1
force {c[2]} 0
force {c[3]} 0
run 40ns;

#case a
#case 0
force {c[0]} 0
force {c[1]} 1
force {c[2]} 0
force {c[3]} 1
run 40ns;