#!/usr/bin/env bash

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python ./scripts/action-recognition/train_recognizer.py \
    --dataset kinetics400 \
    --data-dir /home/ubuntu/third_disk/data/kinetics400/rawframes_train \
    --val-data-dir /home/ubuntu/third_disk/data/kinetics400/rawframes_val \
    --train-list /home/ubuntu/third_disk/data/kinetics400/kinetics400_train_list_rawframes_full.txt \
    --val-list /home/ubuntu/third_disk/data/kinetics400/kinetics400_val_list_rawframes_full.txt \
    --dtype float32 \
    --mode hybrid \
    --prefetch-ratio 1.0 \
    --model slowfast_8x8_resnet50_kinetics400 \
    --slowfast \
    --slow-temporal-stride 8 \
    --fast-temporal-stride 2 \
    --num-classes 400 \
    --batch-size 8 \
    --num-gpus 8 \
    --num-data-workers 32 \
    --input-size 224 \
    --new-height 256 \
    --new-width 340 \
    --new-length 64 \
    --new-step 1 \
    --lr-mode cosine \
    --lr 0.11 \
    --momentum 0.9 \
    --wd 0.0001 \
    --num-epochs 196 \
    --warmup-epochs 37 \
    --warmup-lr 0.001 \
    --scale-ratios 1.0,0.8 \
    --save-frequency 20 \
    --log-interval 50 \
    --logging-file slowfast_8x8_resnet50_kinetics400.log \
    --save-dir ./logs/
