#!/bin/bash
source //itet-stor/yitxia/net_scratch/miniconda3/etc/profile.d/conda.sh
conda activate nerf-torch
nvidia-smi

python tasks/nerfmm/vis_learned_poses_v2.py \
--base_dir ./data/LLFF/ \
--scene_name flower \
--ckpt_dir "./outputs/siren_WS/flower/0505_0047_sirennerf_pos0_dir0_ROI_0.0_0.01_nerf_lr_0.001_focal_lr_0.001_pose_lr_0.001_den30.0_resize_4_seed_111_SIREN_256x8_ROI"