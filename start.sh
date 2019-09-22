#!/bin/bash
#Configured for ubuntu server 18.04

echo "CD into Discovery-Docker-Network"
cd discovery-docker-network

echo "Start 9 workers on your Secret Node. Note : 9 is the max amount of workers you can run."
sudo NODES=9 ./launch.bash
