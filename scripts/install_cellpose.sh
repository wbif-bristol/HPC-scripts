#!/bin/bash

# Installing Conda if necessary
wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/install_conda.sh -O ${WORK}/install_conda.sh
chmod +x ${WORK}/install_conda.sh
${WORK}/install_conda.sh
rm ${WORK}/install_conda.sh

# Creating Cellpose environment
if [ -d "${WORK}/miniconda3/envs/cellpose$1" ]; then
    echo "Cellpose environment exists"

else
    conda create --name cellpose$1 python=3.10 -y
    conda activate cellpose$1

    if [ "$1" == "" ]; then
        echo "Using latest Cellpose"
        pip install cellpose
    else
        echo "Using Cellpose version $1"
        pip install cellpose==$1
    fi

    pip uninstall torch -y
    pip install torch torchvision --index-url https://download.pytorch.org/whl/cu124

fi
