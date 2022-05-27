#!/bin/bash
source //itet-stor/yitxia/net_scratch/miniconda3/etc/profile.d/conda.sh
conda activate nerfmm
nvidia-smi

python tasks/nerfmm/spiral_sirennerf.py \
--base_dir ./data/LLFF/ \
--scene_name fern \
--model_type 'sirennerf' \
--hidden_dims 256 \
--sine_weights_layers0 30 1 1 1 \
--sine_weights_layers1 1 1 1 1 \
--pos_enc_levels 0 \
--dir_enc_levels 0 \
--den_mag 25.0 \
--ckpt_dir ./outputs/siren_WS/fern/0428_0048_sirennerf_nerf_lr_0.001_focal_lr_0.001_pose_lr_0.001_den30.0_resize_4_seed_31_SIREN_256x8_REPEAT

