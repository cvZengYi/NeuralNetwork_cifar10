#!/bin/bash
#SBATCH -J resnet_cifar
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -t 10:00:00
#SBATCH --gres=gpu:2
module load anaconda3/5.3.0 cuda/9.2 cudnn/7.3.0
source activate tf
python -u /cluster/home/it_stu66/code/resnet_cifar10.py