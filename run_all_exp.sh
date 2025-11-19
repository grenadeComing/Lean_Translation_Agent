#!/bin/bash

# Design the fraction factorial experiments
#   T.  F.  S. -> translator feedback(run lean, and lean check)  search (rag and oneline search) 
#   ----------
#   -1  -1  +1 -> T_0_F_0_S_1.json
#   +1  -1  -1 -> T_1_F_0_S_0.json
#   -1  +1  -1 -> T_0_F_1_S_0.json
#   +1  +1  +1 

# Run agent variations with different configurations
python main.py default
python main.py T_1_F_0_S_0
python main.py T_0_F_1_S_0
python main.py T_0_F_0_S_1