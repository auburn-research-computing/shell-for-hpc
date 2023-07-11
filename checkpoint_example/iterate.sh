#!/bin/bash
## iterate through a list and decrement that list every time through 
## to simulate rudimentary checkpointing

## The actual list we need to iterate through is original.lst
## to start we copy that to working.lst 


for each in $(cat working.lst)
do
	echo "working on $each" >>progress.log
	sleep 1
	sed -i /$each/d working.lst
done

