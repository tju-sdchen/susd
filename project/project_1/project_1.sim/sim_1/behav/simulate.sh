#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim counter_tb_behav -key {Behavioral:sim_1:Functional:counter_tb} -tclbatch counter_tb.tcl -log simulate.log
