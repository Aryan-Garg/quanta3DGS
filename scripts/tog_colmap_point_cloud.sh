#!/bin/bash
# export CUDA_VISIBLE_DEVICES=1

echo "This file exists only to remember the steps to run model variation 2. All cmds are commented out"
############################################################################
############## These steps exist to remember how model variation 2 was run
############################################################################


# spsim colmap.run -i /nobackup2/aryan/dataset/moped_rgb0025/train-imgs2/frames/ \
# -o /nobackup2/aryan/dataset/moped_rgb0025/train-colmap \
# -a /nobackup2/aryan/dataset/moped_rgb0025/train-imgs2/transforms.json --force --no-cuda

# colmap image_undistorter --image_path \
# /nobackup2/aryan/dataset/moped_rgb0025/train-colmap/images/ \
# --input_path /nobackup2/aryan/dataset/moped_rgb0025/train-colmap/sparse/0 \
# --output_path /nobackup2/aryan/dataset/moped_rgb0025/train-colmap/dense \
# --output_type COLMAP --max_image_size 2000

# rm -rf /nobackup2/aryan/dataset/moped_rgb0025/train-colmap/sparse/0/*.bin
# mv /nobackup2/aryan/dataset/moped_rgb0025/train-colmap/dense/*.bin /nobackup2/aryan/dataset/moped_rgb0025/train-colmap/sparse/0/

# python train.py  -s /nobackup2/aryan/dataset/moped_rgb0025/train-colmap

# NOTE don't forget to rename transforms_train.json to transforms.json