# Conversation Reconstruction Attack ![EMNLP'24](https://img.shields.io/badge/EMNLP'24-lightyellow?style=flat)

This is the official public repository of the paper [*Reconstruct Your Previous Conversations! Comprehensively Investigating Privacy Leakage Risks in Conversations with GPT Models*](https://arxiv.org/abs/2402.02987v2).  

# Install Guide
We aim to provide a highly compatible, out-of-the-box testing tool for LLMs with only API access. Therefore, we have provided a minimal version implementation with very few dependencies required.  
The python version is 3.10.
```
conda create -n CRA
pip install -r requirements.txt
conda activate CRA
```

# Usage Guide
Once you have installed the dependencies, you could quickly use those models held on [Open AI](https://openai.com/) or [Together AI](https://www.together.ai/) platforms.  
You need API keys from one of the above two providers.  
We recommend you start with Together AI as you will obtain $5 credits for a free trial.  
After you manage to get the API keys, then you need:
```
bash run_experiments.sh
```
The example ```.sh``` file will read the data in ```./data/example_data.json``` to simulate the chat history and save the output in ```./results/```.

# Data Guide
You could use your own data in a ```json``` file.  
Data should be organized in a very common Q-A data format.  
You could check ```./data/example_data.json``` as the reference.  

# More Malicious Prompts
The malicious prompts are quite diverse.  
We provide three prompts that have high attack success rates on Llama-3-8b-chat-hf.  
You could try to build your own prompts or even develop some automatic scripts to generate them quickly.  
