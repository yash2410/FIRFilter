#!/bin/bash -f
xv_path="/home/doshi/Xlinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim FIR32_8_8_tb_behav -key {Behavioral:sim_1:Functional:FIR32_8_8_tb} -tclbatch FIR32_8_8_tb.tcl -log simulate.log
