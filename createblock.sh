#! /bin/bash

# pathfile=$1
mode=660
IFS=:
while read data; do
	ary=($data)
	path=${ary[5]%/*}
	major=${ary[3]%,*}
	[ ! -d "$path" ] && mkdir -p $path
	mknod ${ary[5]} b $major ${ary[4]}
	chown ${ary[1]}:${ary[2]} ${ary[5]}
	chmod $mode ${ary[5]}
done < logblock.txt
