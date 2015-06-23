#! /bin/bash

while read data;do
     file=${data%-*}
     link=${data#*>}
     path=${file%/*}
     [ ! -d "$path" ] && mkdir -p $path
     ln -s $link $file
done < log.txt
