#!/bin/bash

# Creating Cellpose environment
wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/install_cellpose.sh -O ${WORK}/install_cellpose.sh
chmod +x ${WORK}/install_cellpose.sh
${WORK}/install_cellpose.sh
rm ${WORK}/install_cellpose.sh

wget https://raw.githubusercontent.com/wbif-bristol/HPC-scripts/refs/heads/main/scripts/install_fiji.sh -O ${WORK}/install_fiji.sh
chmod +x ${WORK}/install_fiji.sh
${WORK}/install_fiji.sh
rm ${WORK}/install_fiji.sh