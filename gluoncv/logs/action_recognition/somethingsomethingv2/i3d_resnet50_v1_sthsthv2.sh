#!/usr/bin/env bash

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python ./scripts/action-recognition/train_recognizer.py \
    --dataset somethingsomethingv2 \
    --data-dir /home/ubuntu/third_disk/data/somethingsomethingv2/20bn-something-something-v2-frames \
    --train-list /home/ubuntu/third_disk/data/somethingsomethingv2/settings/train_videofolder.txt \
    --val-list /home/ubuntu/third_disk/data/somethingsomethingv2/settings/val_videofolder.txt \
    --mode hybrid \
    --dtype float32 \
    --prefetch-ratio 1.0 \
    --model i3d_resnet50_v1_sthsthv2 \
    --num-classes 174 \
    --batch-size 16 \
    --num-gpus 8 \
    --num-data-workers 32 \
    --input-size 224 \
    --new-height 256 \
    --new-width 340 \
    --new-length 16 \
    --new-step 2 \
    --lr 0.01 \
    --lr-decay 0.1 \
    --lr-mode step \
    --lr-decay-epoch 40,80,100 \
    --momentum 0.9 \
    --wd 0.0001 \
    --num-epochs 100 \
    --scale-ratios 1.0,0.8 \
    --save-frequency 5 \
    --clip-grad 40 \
    --log-interval 20 \
    --logging-file i3d_resnet50_v1_sthsthv2.log \
    --save-dir ./logs/ \
