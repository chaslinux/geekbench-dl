#!/bin/bash

# geekbench-dl.sh
# by chaslinux, chaslinux@gmail.com

# Download and install geekbench, run test

# Constants
GBVER=Geekbench-6.0.3-Linux.tar.gz
GBDIR=Geekbench-6.0.3-Linux

mkdir -p /home/$USER/Desktop/geekbench
cd /home/$USER/Desktop/geekbench
wget https://cdn.geekbench.com/$GBVER
tar -zxvf $GBVER
cd $GBDIR
./geekbench6

# Remove the directory after running
cd ..
rm -rf /home/$USER/Desktop/geekbench