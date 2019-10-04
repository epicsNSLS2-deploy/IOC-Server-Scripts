#!/bin/bash


sudo mkdir /epics
sudo chown -R $(whoami):$(whoami) /epics

cd /epics

mkdir src prod utils op iocs devel

cd  utils
git clone https://github.com/epicsNSLS2-deploy/installSynApps
git clone https://github.com/epicsNSLS2-deploy/initIOC
git clone https://github.com/epicsNSLS2-deploy/updateIOC
git clone https://github.com/epicsNSLS2-deploy/Docker-Builder
git clone https://github.com/epicsNSLS2-deploy/Install-Configurations
git clone https://github.com/epicsNSLS2-deploy/initMotorIOC
git clone https://github.com/epicsNSLS2-deploy/opi_organizer

cd ..

chown softioc:softioc iocs
