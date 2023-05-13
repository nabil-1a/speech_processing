#!/bin/bash
#$ -S /bin/bash

#here you'd best to change testjob as username
#$ -N tasnet_reverb

#cwd define the work environment,files(username.o) will generate here
#$ -cwd

# merge stdo and stde to one file
#$ -j y

echo "job start time: `date`"
# start whatever your job below, e.g., python, matlab, etc.
#ADD YOUR COMMAND HERE,LIKE python3 main.py
#chmod a+x run.sh
bash run.sh

hostname
sleep 10
echo "job end time:`date`"
