#!/bin/bash

PHYSICALCORES=`grep -P '^core id\t' /proc/cpuinfo | wc -l`
NUMCORES=$(($PHYSICALCORES))
#OUTPUT=/mnt/raid0/test
OUTPUT=/fsx/mpirun_test
export PATH=/shared/ior/bin:$PATH
# IOR OPTIONS
# -w writing performance benchmark
# -r reading performance benchmark
# -B use O_DIRECT to shortcut the glibc caching layer, hit directly the OS and file system
# -o benchmark file output path
# -a method to use, POSIX is selected for raw perfs. MPIIO has data caching and skew the results
# -F one file per process if present, shared file if non present. One file per process is the most intense.
# -Z changes task ordering to random ordering for readback
# -z access is to random, not sequential, offsets within a file
# -i number of repetitions (use 5 as a good test, stdev should be minimal)
# -C Re-order tasks: change the task ordering to n+1 ordering for read-back. May avoid the read cache effects on clients


#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 4k| tee posix_perproc_4k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 16k| tee posix_perproc_16k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 32k| tee posix_perproc_32k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 64k| tee posix_perproc_64k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 128k| tee posix_perproc_128k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 256k| tee posix_perproc_256k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 512k| tee posix_perproc_512k.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 1m| tee posix_perproc_1m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 2m| tee posix_perproc_2m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 4m| tee posix_perproc_4m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 8m| tee posix_perproc_8m.txt
nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 16m| tee posix_perproc_16m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 32m| tee posix_perproc_32m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 64m| tee posix_perproc_64m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 128m| tee posix_perproc_128m.txt
#nohup mpirun ior -w -r -B -C -o $OUTPUT -b 256m -a POSIX -i 5 -F -z -t 256m| tee posix_perproc_256m.txt
