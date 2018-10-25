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
ExecStep $xv_path/bin/xelab -wto 62aa353b383f440599bee1aba23926fb -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot FIR32_8_8_tb_behav xil_defaultlib.FIR32_8_8_tb -log elaborate.log
