#! /bin/bash 

find . -type l -exec ls -la {} \; |awk '{print $9 $10 $11}' >log.txt
