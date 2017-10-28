#  File: 'D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task_2_TB\task_2_tb2.do'
#  created: 10/28/17 13:52:26
#  from: 'D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task_2.asf'
#  by ASFTEST - v.2.1.3 build 56, August 25, 2005

#
# rebuild the project
#
comp "D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task_2.asf"
comp "D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task_2_TB\task_2_tb2.vhd"

#
# set top-level and initialize the simulator with Code Coverage Data
#
asim -cc -cc_dest $DSN/coverage/task_2_cc_tb2 -cc_hierarchy -cc_all task_2_cfg_tb2

#
# invoke Waveform Viewer window, add signals to Waveform
#
wave
wave -noreg -dec cycle_num
wave -noreg CLK
wave -noreg UUT/state
wave -noreg test_state
wave -noreg RST
wave -noreg IP
wave -noreg OP

#
#
#
run -all
endsim
write wave "D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task_2_TB\task_2_tb2.awf"
#close -wave