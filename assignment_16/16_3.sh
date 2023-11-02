#!/bin/bash


echo "Enter the input: "
read path



if [ -f $path  ]
then
	stat -c "size=%s" $path
elif [ -d $path  ]
then
	ls -l $path
else
	echo "Invalid path"
fi





