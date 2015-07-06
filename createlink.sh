#! /bin/bash

IFS=:
while read data;do
     ary=($data)
     path=${ary[3]%/*}
     [ ! -d "$path" ] && mkdir -p $path
     ln -s ${ary[4]} ${ary[3]}
done < loglink.txt
