#! /bin/bash

find . -type l -ls > log.txt
while read line; do
    echo ${line#*.}
done < log.txt
#for i in $(find . -type l -ls); do
#    #if [ -L "$i" ] && [ "$i" -ef ./orig.file ]; then
#    #    printf "Found: %s\n" "$i"
#    #fi
#    echo $i
#done
