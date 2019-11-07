#!/bin/bash

# Simple script that initializes IOC on new server,
# meant for use with stop-ioc.sh

function start_ioc () {
    sudo manage-iocs install $1
    sudo manage-iocs enable $1
    sudo /etc/init.d/softioc-$1 start
}


if [ $1 = "all" ];
then
cd /epics/iocs
for d in */; do
    dir=${d%*/}
    start_ioc $dir
done
else
start_ioc $1
fi
