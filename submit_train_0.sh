 sbatch --output=/usr/itetnas04/data-scratch-01/yitxia/data/nerfmm/log/%j.out \
 --gres=gpu:1 \
 --mem=32G \
 train_0.sh --constraint='titan_xp'