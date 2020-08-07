#!/bin/bash

function pathRead {
	for f in $1/*
	do
		if [[ -d ${f} ]] 
		then
			pathRead ${f};
		fi

		fileName=$(echo rev ${f} | rev | cut -d "/" -f 1 | rev)
	
		if [[ $2 = $fileName ]]
		then
			echo "relative path : " ${f};
			echo "full path : " $PWD/$fileName;
		fi
	done
}

echo "Enter path :"
read path
echo "Enter file name :"
read fileName
pathRead $path $fileName


