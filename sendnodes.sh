#!/bin/bash
#Configured for ubuntu server 18.04
#Version 0.2 ALTMETHOD | Sep 22, 2019

echo "Downloading scripts to configure your Secret Node."
wget https://raw.githubusercontent.com/secretnodes/scripts/altmethod/sendnodes.sh

echo "Downloading Discovery-Docker-Network."
git clone https://github.com/enigmampc/discovery-docker-network.git
sleep 2

echo "Change permissions for install sgx, install docker, start, & upgrade scripts."
chmod u+x ~/install-sgx.sh
chmod u+x ~/install-docker.sh
chmod u+x ~/start.sh
chmod u+x ~/upgrade.sh

echo "<3 from https://secretnodes.org"
