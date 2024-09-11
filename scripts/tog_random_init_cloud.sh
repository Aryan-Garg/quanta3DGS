#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

python train.py  -s /nobackup2/aryan/dataset/moped_rgb0025/train-colmap

# NOTE don't forget to rename transforms_train.json to transforms.json