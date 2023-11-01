#!/bin/bash --login

#SBATCH --job-name=blChatGPT_No_mcrae_overlap_finetune

#SBATCH --output=logs/chatgpt_finetune/out_bert_large_no_mcrae_overlap_pcv_chatgpt100k_finetune.txt
#SBATCH --error=logs/chatgpt_finetune/err_bert_large_no_mcrae_overlap_pcv_chatgpt100k_finetune.txt

#SBATCH --tasks-per-node=5
#SBATCH --ntasks=5
#SBATCH -A scw1858

#SBATCH -p gpu_v100,gpu
#SBATCH --mem=16g
#SBATCH --gres=gpu:1

#SBATCH -t 1-00:00:00

conda activate venv

python3 bienc_fine_tune.py --config_file configs/3_finetune/bert_large_no_mcrae_overlap_pcv_chatgpt100k_finetune_config.json

echo 'finished!'