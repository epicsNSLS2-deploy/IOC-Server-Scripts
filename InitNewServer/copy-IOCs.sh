#!/bin/bash

# Simple scripts that copies all IOCs from one IOC server to another,
# and runs the updateIOC script on them.

cd /epics/iocs

scp -r $(whoami)@$1:/epics/iocs/* .


echo "Do you want to run the updateIOC script to try and repoint IOCs to new binaries?"
read -p "(y/n) > " res
if [ "$res" == "y" ];
then
read -p "What is the location of the new binaries? > " bin_path
cd /epics/utils/updateIOC
./updateIOC -b $bin_path -i /epics/iocs -a
fi
echo "Done."