#!/bin/bash
#Configured for ubuntu server 18.04
#Version 0.2 NUC General | Sep 26, 2019
#Tested on : 8i7BEK, ...

echo "This is currently an experimental fix for issue Get https://registry-1.docker.io/v2/: net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)"
echo "Please report any issues you face at https://t.me/secretnodes"

#echo "Installing dnsmasq"
#sudo apt-get install dnsmasq

#echo "Adding 1.1.1.1 cloudflare nameserver."
#echo "server=1.1.1.1" >> nuc-1.fix
#sudo cp /etc/dnsmasq.conf dnsmasq-default.conf
#sudo mv -f nuc-1.fix /etc/dnsmasq.conf

#echo "Adding Cloudflare nameserver 1.1.1.1"
#echo "name server 1.1.1.1" >> nuc-1.fix
#cp /etc/resolv.conf resolv-backup.conf
#sudo mv -f nuc-1.fix /etc/resolv.conf

#echo "Creating symlink via: Ls -s /etc/resolv.conf nuc-1.fix"
#sudo ln -s /etc/resolv.conf nuc-1.fix

echo "Implimenting fix for docker caused networking issue https://github.com/docker/libnetwork/issues/2187"
ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
echo "Note: To upgrade all scripts, you must merely run sendnodes.sh again."
