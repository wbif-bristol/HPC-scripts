#!/bin/bash

# Check if we need to install conda
if command -v conda >/dev/null 2>&1; then
    # Conda is installed and recognised
    echo "Conda is already available"
else
    if [ -f "${WORK}/initConda.sh" ]; then
        # Conda initialisation script exists
        echo "Conda is already available"
    else
        echo "Installing Conda"

        # Installing Conda
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ${WORK}/Miniconda3-latest-Linux-x86_64.sh
        chmod u+x ${WORK}/Miniconda3-latest-Linux-x86_64.sh
        ${WORK}/Miniconda3-latest-Linux-x86_64.sh -p ${WORK}/miniconda3     
        rm ${WORK}/Miniconda3-latest-Linux-x86_64.sh

        # Getting script to initialise Conda
        wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/init_conda.sh -O ${WORK}/init_conda.sh
        chmod u+x init_conda.sh
        
    fi
fi
