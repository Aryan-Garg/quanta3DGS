#!/bin/bash
export CUDA_VISIBLE_DEVICES=1

# HDRSplat args
#  --position_lr_init 0.00001 --scaling_lr 0.0001 \
#  --opacity_lr 0.001 --feature_lr 0.0001 --sh_degree 2

# TODO - 09/30 
# 30k - 12.5fps | 10k - 25fps | 5k ... ckpt | 5k - binary ckpt | 80k - binary

python train.py -s /nobackup3/aryan/dataset/binary/f1000/train \
 --is_pure_graded --densify_until_iter 20000 --iterations 70000

# V2: 
python train.py -s /nobackup3/aryan/dataset/binary/f1000/train \
 --is_pure_graded --densify_until_iter 20000 --iterations 70000 \
 --position_lr_init 0.00004 --position_lr_final 0.00000016 --scaling_lr 0.0001 \