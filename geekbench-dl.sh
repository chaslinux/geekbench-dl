#!/bin/bash

# geekbench-dl.sh
# by chaslinux, chaslinux@gmail.com

# Download and install geekbench, run test

# Constants
GBVER=Geekbench-6.4.0-Linux.tar.gz
GBDIR=Geekbench-6.4.0-Linux
CPUTEST=$(cat /proc/cpuinfo | grep 'model name' | cut -c 14- | cut -c -3 | head -n 1)

mkdir -p /home/$USER/Desktop/geekbench
cd /home/$USER/Desktop/geekbench
wget https://cdn.geekbench.com/$GBVER
tar -zxvf $GBVER
cd $GBDIR

if [ $CPUTEST == "AMD" ]
	then
		echo "This is an AMD CPU running geekbench_x86_64"
		./geekbench_x86_64
	else
		echo "This is an Intel, or other processor, running geekbench_avx2"
		./geekbench6
fi

# Remove the directory after running
cd ..
rm -rf /home/$USER/Desktop/geekbench
