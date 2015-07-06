#! /bin/bash 

find . -type l -printf "%m:%u:%g:%p:%l\n" > loglink.txt
#find . -type l -exec ls -la {} \; |awk '{print $9 $10 $11}' >loglink.txt
