#!/bin/bash
#Configured for ubuntu server 18.04
#Version 0.2 ALTMETHOD | Sep 22, 2019

echo "Downloading Discovery-Docker-Network."
git clone https://github.com/enigmampc/discovery-docker-network.git
sleep 2

echo "Downloading scripts to configure your Secret Node."
wget -O install-docker.sh https://raw.githubusercontent.com/secretnodes/scripts/altmethod/install-docker.sh
sleep 1
wget -O install-sgx.sh https://raw.githubusercontent.com/secretnodes/scripts/altmethod/install-sgx.sh
sleep 1
wget -O start.sh https://raw.githubusercontent.com/secretnodes/scripts/altmethod/start.sh
sleep 1
wget -O upgrade.sh https://raw.githubusercontent.com/secretnodes/scripts/altmethod/upgrade.sh
sleep 1

echo "Change permissions for install sgx, install docker, start, & upgrade scripts."
sudo chmod u+x ~/install-sgx.sh
sleep 1
sudo chmod u+x ~/install-docker.sh
sleep 1
sudo chmod u+x ~/start.sh
sleep 1
sudo chmod u+x ~/upgrade.sh

echo "Running upgrade.sh script."
sudo bash upgrade.sh
sleep 5
echo "The script is not finished yet. Next we will install docker, please wait."

echo "Running install-docker.sh script."
sudo bash install-docker.sh
sleep 5
echo "The script is not finished yet. Next we will install sgx, please wait."

echo "Running install-sgx.sh script."
sudo bash install-sgx.sh
sleep 5
echo "<3 from https://secretnodes.org"
