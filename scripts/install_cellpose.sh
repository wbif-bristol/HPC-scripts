#!/bin/bash

# Installing Conda if necessary
wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/install_conda.sh -O ${WORK}/install_conda.sh
chmod +x ${WORK}/install_conda.sh
${WORK}/install_conda.sh
rm ${WORK}/install_conda.sh

# Creating Cellpose environment
conda create --name cellpose python=3.10 -y
conda activate cellpose
pip install cellpose
