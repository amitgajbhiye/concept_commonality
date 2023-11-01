#!/bin/bash --login

#SBATCH --job-name=bbHpt

#SBATCH --output=logs/mcrae_clean_vocab_data/out_ps_mcrae_prop_conj_hp_tune_bert_base_je_fintune_cnetp_deb_filtered_thresh50.txt
#SBATCH --error=logs/mcrae_clean_vocab_data/err_ps_mcrae_prop_conj_hp_tune_bert_base_je_fintune_cnetp_deb_filtered_thresh50.txt

#SBATCH --tasks-per-node=5
#SBATCH --ntasks=5
#SBATCH --account scw1858

#SBATCH --partition gpu_v100
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --qos=gpu7d
#SBATCH --time 7-00:00:00

conda activate venv

python3 model/lm_prop_conj.py --config_file configs/2_configs_get_embeds_and_train_data/mcrae_data_clean_vocab/ps_mcrae_prop_conj_hp_tune_bert_base_je_fintune_cnetp_deb_filtered_thresh50.json

echo 'Job Finished!'
