#!/bin/bash


path=pwd
if [ ! -f bigBrotherCurrent.txt ]; then
	ls > bigBrotherCurrent.txt
	echo "Welcome to the Big Brother"
else 
	ls > bigBrotherNew.txt
	let index1=1
	let index2=1
	while read line1
	do 
		exist=0
		while read line2
		do
			if [ "$line1" == "$line2" ]; then
				exist=1
			fi
		done <bigBrotherNew.txt
		if [ $exist == 0 ]; then
			echo "File deleted: $line1" 
		fi
		index1=$(( index1 + 1 ))
	done <bigBrotherCurrent.txt

	awk '!/bigBrotherNew.txt/' bigBrotherNew.txt > temp && mv temp bigBrotherNew.txt 
	

	index1=1
	index2=1	
	
	while read line3
	do 
		exist=0
		while read line4
		do
			if [ "$line3" == "$line4" ]; then
				exist=1
			fi
			index2=$(( index2 + 1 ))
		done <bigBrotherCurrent.txt
		if [ $exist == 0 ]; then
			if [ -f $line3 ]; then
				echo "File created: $line3"
			else
				echo "Folder created: $line3"
			fi
		fi
		index1=$(( index1 + 1 ))
	done <bigBrotherNew.txt
	cp bigBrotherNew.txt bigBrotherCurrent.txt
	rm bigBrotherNew.txt
	
	
fi

