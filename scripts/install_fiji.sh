#!/bin/bash

# Creating Fiji
if [ -d "${WORK}/Fiji.app" ]; then
    echo "Fiji exists"

else
    echo "Installing Fiji"
    wget https://downloads.imagej.net/fiji/stable/fiji-stable-linux64-jdk.zip -O ${WORK}/fiji-stable-linux64-jdk.zip
    unzip ${WORK}/fiji-stable-linux64-jdk.zip -d ${WORK}
    rm ${WORK}/fiji-stable-linux64-jdk.zip

fi

${WORK}/Fiji.app/ImageJ-linux64 --headless --update add-update-site MIA https://sites.imagej.net/ModularImageAnalysis/
${WORK}/Fiji.app/ImageJ-linux64 --headless --update add-update-site IJPB-plugins https://sites.imagej.net/IJPB-plugins
${WORK}/Fiji.app/ImageJ-linux64 --headless --update add-update-site PTBIOP https://biop.epfl.ch/Fiji-Update/
${WORK}/Fiji.app/ImageJ-linux64 --headless --update update
