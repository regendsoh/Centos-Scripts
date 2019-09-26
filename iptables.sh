#!/bin/bash
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl mask --now firewalld
sudo yum install iptables-services iptables -y
sudo systemctl start iptables
sudo systemctl start iptables6
sudo systemctl enable iptables
sudo systemctl enable iptables6
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sudo sysctl -p
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -t nat -F
sudo iptables -t mangle -F
sudo iptables -F
sudo iptables -X
