

CUDA_VISIBLE_DEVICES=2,3 python general_distill.py   \
                          --teacher_model /nas/pretrain-bert/pretrain-pytorch/chinese_wwm_ext_pytorch/ \
                          --student_model student_model/  \
                          --train_file_path  /nas/xd/data/novels/好想住你隔壁.txt \
                          --do_lower_case \
                          --train_batch_size 20 \
                          --output_dir ./output_dir  \
                          --learning_rate 5e-5  \
                          --num_train_epochs  3  \
                          --eval_step  2000  \
                          --gradient_accumulation_steps  1  3>&2 2>&1 1>&3 | tee logs/tiny_bert.log
                    