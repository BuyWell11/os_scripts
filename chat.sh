#!/bin/bash

echo "Your PID $$"
echo "Enter friend's PID"
read friend_pid
out_file="${friend_pid}_$$"
in_file="$$_${friend_pid}"
if [[ -e out_file ]]; then
	touch $in_file
else
	touch $in_file
	touch $out_file
fi

trap "echo $friend_pid disconnected" 15
trap "tail -n 1 $out_file | openssl enc -base64 -d" 2

while true
do
	read mes 
	if [ "$mes" = "/leave" ]; then
    	rm $in_file
        rm $out_file
        kill -15 $friend_pid
        exit 0
    fi
	echo "$$: $mes"| openssl enc -base64 >> $in_file
	kill -2 $friend_pid
done