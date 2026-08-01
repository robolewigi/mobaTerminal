#!/bin/bash
CPP_SCRIPT="main.cpp"
OUTPUT_BIN="./main"
VENV_PATH="$HOME/app/latestEnv/bin/activate"

if [ -f "$CPP_SCRIPT" ]; then
    cosmic-term -- bash -ic "source '$VENV_PATH' && g++ -Wall '$CPP_SCRIPT' -o '$OUTPUT_BIN' && '$OUTPUT_BIN'; exec bash"
else
    cosmic-term -- bash -c "echo 'Error: $CPP_SCRIPT not found!'; exec bash"
fi