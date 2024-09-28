#!/bin/bash
export CUDA_VISIBLE_DEVICES=1

python train.py  -s /nobackup2/aryan/dataset/moped_rgb0025/train-imgs2 --save_iterations 7000

# NOTE don't forget to rename transforms_train.json to transforms.json