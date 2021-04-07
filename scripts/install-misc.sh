#!/bin/bash
sudo apt update

#For installing requirements.txt with docker
sudo apt install -y python3-pip

sudo apt install -y mysql-client

#For running tests on application
sudo apt install -y python-pytest