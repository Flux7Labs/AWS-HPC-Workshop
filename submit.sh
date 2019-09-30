#!/bin/sh

# Simple script to submit n number of jobs to SGE
#  

if [[ $# -lt 2 ]] ; then
    echo "usage:  $0 <input file> <number of runs>"
    echo "example:  $0 job.sh 10"
    exit 0
fi

if ! [[ "$2" =~ ^[0-9]+$ ]]
    then
        echo "The second argument must be a number"
	exit 1
fi

for i in $(seq 1 $2)
do
	qsub $1
done
