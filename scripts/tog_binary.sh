#!/bin/bash
export CUDA_VISIBLE_DEVICES=1

# HDRSplat args
# python train.py -s /nobackup3/aryan/dataset/binary/f1000/train \
#  --is_binary --position_lr_init 0.00001 --scaling_lr 0.0001 \
#  --opacity_lr 0.001 --feature_lr 0.0001 --sh_degree 2

# python train.py -s /nobackup3/aryan/dataset/binary/f1000/train --is_binary

python train.py -s /nobackup3/aryan/dataset/binary/f1000/train \
    --start_checkpoint /nobackup3/aryan/HDRSplat/output/2e52f149-f/point_cloud/iteration_7000/point_cloud.ply --is_binary \
    --position_lr_init 0.00001 --scaling_lr 0.0001 --opacity_lr 0.001 \
    --feature_lr 0.0001 --sh_degree 2 --densify_until_iter 6999