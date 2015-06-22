#! /bin/bash

path=$1
tmp=${path##*/}
file=${tmp%.*}
transmission-create -p -o ${file}.Torrent -t "http://172.30.143.189:6969/announce" $path 2> log.txt
while read line;do
    tmp=${line#*\"}
    echo ${tmp%\"*} >> log1.txt
done < log.txt
