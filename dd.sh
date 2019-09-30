#!/bin/sh

# Simple script to write out a file using dd to
# get an idea of filesystem throughput
#
# take results with a grain of salt, as you are also
# benchmarking the CPU via /dev/urandom

if [[ $# -lt 2 ]] ; then
        echo "usage:  $0 <output file> <number of iterations (in Mb)>"
    echo "example:  $0 /fsx/file.out 1024"
    exit 0
fi

if ! [[ "$2" =~ ^[0-9]+$ ]]
    then
        echo "The second argument must be a number"
        exit 1
fi

dd if=/dev/urandom of="$1" bs=1M count="$2" status=progress
