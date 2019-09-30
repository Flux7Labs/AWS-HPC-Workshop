# AWS-HPC-Workshop
Content for AWS HPC Workshop Materials

## List of files:
---

### `archive.sh`

This is a simple script that will run a find in the /fsx directory and execute an lfs `hsm_archive` command.  It takes no arguments.

### `dd.sh`

Runs a dd command with two arguments:  an output file name and a number of iterations to run.  1024 is the equivalent of 1Mb, etc..

`dd.sh <output file> <num iterations>`

### `job.sh`

A simple "hello world" job meant to be run in a compute cluster for demo purposes.  It takes no arguments

### `mpirun.sh`

Runs a 16mb IOR job into `/fsx/mpirun_test`.  Takes no arguments

### `submit.sh`

Submits n number of jobs to an SGE scheduler for dispatch.  Syntax is simple:

`submit.sh <input file> <number of runs>`

This is meant to be run using `job.sh` as its input.
