#!/bin/bash
set -x
nohup python -u run.py \
    --test_file ./data/tasks_test.jsonl \
    --api_key ollama \
	--base_url http://0.0.0.0:8000/v1 \
    --headless \
    --max_iter 15 \
    --max_attached_imgs 1\
    --temperature 1 \
    --fix_box_color \
    --seed 42 > test_tasks.log &
