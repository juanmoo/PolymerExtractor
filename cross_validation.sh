K_SPLIT_DIR="/data/rsg/nlp/juanmoo1/projects/04_polymer/01_ner_bert/data/all_reagent_grouping/ner_evaluation/k_splits"
GPUS="0,1,2,3"
IDX="0"

START=0
END=4

for j in $(seq ${START} ${END}); do
    echo Run ${j}th split
    /bin/bash run_split.sh ${j} ${K_SPLIT_DIR} ${GPUS} ${IDX}
done
