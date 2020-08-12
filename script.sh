#!/bin/bash

#List of Parameter passed during run time
name=$1
lastname=$2
show=$3

if [ "$show" = true ]; then
echo "Hello, $name $lastname"
else
	echo "To print your name select show options"
fi

