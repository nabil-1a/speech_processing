#!/bin/bash
# Created on 2020/07
# Author: Nabil

python_path=/Work19/2019/nabil/envs/crnn/bin/python
src=/Work19/2019/nabil/crnn
stage=11

if [ $stage -le 0 ]; then
  echo "Stage 1: Training"
  ${python_path} ${src}/train.py \
    --config ${src}/config/train/SA-SE-CRN-Baseline.json \
    --device 0
fi

if [ $stage -le 0 ]; then
  echo "Stage 2: Enhancing"
  ${python_path} ${src}/enhancement.py \
    --config ${src}/config/enhancement/Non-Stationary-Datasets.json
fi

if [ $step -le 11 ]; then

    echo "Start Evaluation."
    # Should write the paths in evaluation files. 

    models=SA-SE-CRN-Baseline
    dirs=/Work19/2019/nabil/crnn/Experiments/SA-SE/SA-SE-CRN-Baseline/enhancements/

    /opt18/MATLAB/R2017b/bin/matlab -nodesktop -nosplash -r "models='$models';dirs='$dirs';evaluation;quit"

fi