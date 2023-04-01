#!/bin/bash

printHelp()
{
	echo "usage:"
	echo "	-h print this message"
	echo "	-c compile"
	echo "	-w write binary file to flash"
	echo "	-r read from flash to binary file"
	echo " 	-e erase flash"
	echo " 	-d clean all project"
}

while getopts hcwred flag
do
	case "${flag}" in
	c) echo "compile";
		make;;
	w) echo "write";
		st-flash write ./build/stm32f103-freertos.bin 0x08000000;;
	r) echo "read";
		mkdir ./build;
		st-flash read ./build/stm32f103-freertos.bin 0x08000000 0x8000;;
	d) echo "clean";
		make clean;;
	e) echo "erase"
		st-flash erase;;
	?) echo "invalid option";
		printHelp
		exit;;
	esac
done
