SPLIT_NUM=$1
K_SPLIT_DIR=$2
GPUS=${3}
IDX=${4}

CONFIG_NAME="${IDX}_config.json"

cat <<EOF >${CONFIG_NAME}
{
  "data_dir": "${K_SPLIT_DIR}/split_${SPLIT_NUM}",
  "model_name_or_path": "bert-base-cased",
  "output_dir": "${K_SPLIT_DIR}/split_${SPLIT_NUM}/model",
  "labels": "/data/rsg/nlp/juanmoo1/projects/04_polymer/01_ner_bert/configs/prod_labels.txt",
  "max_seq_length": 512,
  "num_train_epochs": 100,
  "per_device_train_batch_size": 12,
  "save_steps": 1000,
  "eval_steps": 100,
  "seed": 12,
  "do_train": true,
  "do_eval": true,
  "do_predict": true,
  "evaluate_during_training": true,
  "use_crf": true,
  "crf_learning_rate": 5e-3,
  "use_fast": true,
  "overwrite_output_dir": true,
  "overwrite_cache": true
}
EOF

CUDA_VISIBLE_DEVICES="${GPUS}" python train.py prod ${CONFIG_NAME}
rm ${CONFIG_NAME}
