#!/bin/bash
mkdir ./InputOutputStuff/lw_nlw_output;
mkdir ./InputOutputStuff/lw_nlw_output/lw;
mkdir ./InputOutputStuff/lw_nlw_output/nlw;
for ((i=1; i<=25; i++)); do #change second i for more than 1 run
    echo "Evaluating LW: $i";
    mkdir ./InputOutputStuff/lw_nlw_output/lw/lw.$i;
    python3 GP_Main.py "./InputOutputStuff/lw.csv" "./InputOutputStuff/lw_nlw_output/lw/lw.$i";
    echo "Evaluating NLW: $i";
    mkdir ./InputOutputStuff/lw_nlw_output/nlw/nlw.$i;
    python3 GP_Main.py "./InputOutputStuff/nlw.csv" "./InputOutputStuff/lw_nlw_output/nlw/nlw.$i";
done