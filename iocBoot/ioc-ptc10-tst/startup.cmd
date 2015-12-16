#!/bin/bash

# Set the IOC name
export IOC="ioc-ptc10-tst"

# Setup the IOC user environment
# TODO: Change xxx as needed for your hutch
source /reg/d/iocCommon/All/tst_env.sh

# For release
#cd $EPICS_SITE_TOP/ioc/xxx/ptc10/R0.1.0/iocBoot/ioc-ptc10-tst

# Copy the archive file to iocData
#$RUNUSER "cp ../../archive/$IOC.archive $IOC_DATA/$IOC/archive"

# Launch the IOC
$RUNUSER "$PROCSERV --logfile $IOC_DATA/$IOC/iocInfo/ioc.log --name $IOC 30444 ../../bin/linux-x86_64/ptc10 st.cmd"
