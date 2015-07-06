#! /bin/bash

find . -type b -exec ls -la {} \;|awk '{print $1" "$3" "$4" "$5 $6" "$10}' > /home/server/Torrent/blog.txt