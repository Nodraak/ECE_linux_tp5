#!/bin/bash

KERNEL=$(uname --kernel-name --kernel-release)
PROC_NB=$(cat /proc/cpuinfo | grep proc | wc -l)
PROC_TYPE=$(cat /proc/cpuinfo | grep model\ name | cut -b 14- | head -n 1)
MEM=$(cat /proc/meminfo | head -n 1 | cut -b 18-)

TEXT="Kernel : $KERNEL\nProco : $PROC_NB\nModel : $PROC_TYPE\nMemory : $MEM"

zenity --info --text="$TEXT"
