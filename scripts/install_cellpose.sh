#!/bin/bash

cd ${WORK}

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
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
        chmod u+x Miniconda3-latest-Linux-x86_64.sh
        ${WORK}/Miniconda3-latest-Linux-x86_64.sh -p ${WORK}/miniconda3     
        rm ${WORK}/Miniconda3-latest-Linux-x86_64.sh

        # Getting script to initialise Conda
        wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/init_conda.sh
        chmod +x init_conda.sh

        # Creating Cellpose environment
        ${WORK}/initConda.sh
        conda create --name cellpose python=3.10
        conda activate cellpose
        pip install cellpose

    fi
fi

