#!/bin/bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install docker-ce --nobest -y
sudo systemctl enable docker
sudo systemctl start docker
