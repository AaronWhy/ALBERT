#pip install -r requirements.txt
python -m run_classifier \
  --data_dir='./' \
  --output_dir='./checkpoints' \
  --spm_model_file='albert_base_2/30k-clean.model' \
  --init_checkpoint='albert_base_2/model.ckpt-best' \
  --albert_config_file='albert_base_2/albert_config.json' \
  --vocab_file='albert_base_2/30k-clean.vocab' \
  --do_train \
  --do_lower_case \
  --max_seq_length=128 \
  --optimizer=adamw \
  --task_name=score \
  --warmup_step=0 \
  --learning_rate=3e-5 \
  --save_checkpoints_steps=10 \
  --train_batch_size=16

#
#  --do_eval \
 # --do_predict \
# --init_checkpoint='' \
# --albert_hub_module_handle=https://tfhub.dev/google/albert_base/1 \
# --albert_config_file='albert_base/albert_config.json' \
# --train_step=1000 \