#! /bin/bash

while read line;do
    tmp=${line#*\"}
    echo ${tmp%\"*}
done < log.txt
