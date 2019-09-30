#!/bin/sh

# Simple script to archive everything in /fsx to its S3 bucket

nohup find /fsx -type f -print0 | xargs -0 -n 1 sudo lfs hsm_archive &
