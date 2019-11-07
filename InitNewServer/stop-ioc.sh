#!/bin/bash

# Simple script for stopping and removing IOC from server bootup. Meant to be used when
# IOCs are being moved from one server to another

function stop_ioc (){
    sudo /etc/init.d/softioc-$1 stop
    sudo manage-iocs disable $1
}

if [ $1 = "all" ];
then
cd /epics/iocs
for d in */;
do
    dir=${d%*/} 
    stop_ioc $dir
done
else
    stop_ioc $1
fi
