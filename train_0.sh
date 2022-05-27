#!/bin/bash
source //itet-stor/yitxia/net_scratch/miniconda3/etc/profile.d/conda.sh
conda activate nerfmm
nvidia-smi

python tasks/nerfmm/train_eval_siren_ROI.py \
--base_dir ./data/LLFF/ \
--root_dir ./outputs/siren_WS \
--scene_name trex \
--model_type "sirennerf" \
--hidden_dims 256 \
--sine_weights_layers0 30 1 1 1 \
--sine_weights_layers1 1 1 1 1 \
--den_mag 30 \
--resize_ratio 4 \
--epoch 10000 \
--nerf_lr 1e-3 \
--focal_lr 1e-3 \
--pose_lr 1e-3 \
--pos_enc_levels 10 \
--dir_enc_levels 4  \
--rand_seed 111 \
--use_ROI \
--ROI_schedule_head 0.0 \
--ROI_schedule_tail 0.05 \
--alias "SIREN_256x8_ROI"
