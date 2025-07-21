#!/bin/bash

# Check if we need to install conda
if [ -d "${WORK}/miniconda3/" ]; then
    # Conda is installed and recognised
    echo "Conda is already available"
else
    echo "Installing Conda"

    # Installing Conda
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ${WORK}/Miniconda3-latest-Linux-x86_64.sh
    chmod u+x ${WORK}/Miniconda3-latest-Linux-x86_64.sh
    ${WORK}/Miniconda3-latest-Linux-x86_64.sh -p ${WORK}/miniconda3     
    rm ${WORK}/Miniconda3-latest-Linux-x86_64.sh

    # Getting script to initialise Conda
    # wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/init_conda.sh -O ${WORK}/init_conda.sh
    # chmod u+x ${WORK}/init_conda.sh
        
    # Effectively reloading bash
    source ~/.bashrc
    
fi