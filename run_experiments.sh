#!/bin/bash

export TOGETHER_API_KEY="YOUR_API_KEY"
export OPENAI_API_KEY="YOUR_API_KEY"

# Set the values for your variables here
num_tests=5
num_rounds=2

python ./chat_simulation.py \
--num_tests ${num_tests} --num_rounds ${num_rounds} \
--version meta-llama/Llama-3-8b-chat-hf --model_provider together_ai \
--attack naive \
--filename ./data/example_data.json

python ./chat_simulation.py \
--num_tests ${num_tests} --num_rounds ${num_rounds} \
--version meta-llama/Llama-3-8b-chat-hf --model_provider together_ai \
--attack unr \
--filename ./data/example_data.json

python ./chat_simulation.py \
--num_tests ${num_tests} --num_rounds ${num_rounds} \
--version meta-llama/Llama-3-8b-chat-hf --model_provider together_ai \
--attack pbu \
--filename ./data/example_data.json

# Wait for all tasks to complete
wait

# Output a completion message
echo "All scripts have completed."