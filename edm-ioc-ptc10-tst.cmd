#! /bin/bash

# Setup edm environment
source /reg/g/pcds/setup/epicsenv-3.14.12.sh

edm -x -m "IOC=TST:PTC10:IOC:00" -eolc ptc10Screens/ptc10.edl &
