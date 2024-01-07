#!/bin/bash

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if 'data' directory does not exist and then create it
if [[ ! -e $DIR/data ]]; then
    mkdir "$DIR/data"
else
    echo "'data' directory already exists."
fi

# Download the traffic_analysis.mp4 file from Google Drive
gdown -O "$DIR/data/traffic_analysis.mp4" "https://drive.google.com/uc?id=1Wm63b3mRm_axTPxRL6xAgSDauRSRAJx-"

# Download the traffic_analysis.pt file from Google Drive
gdown -O "$DIR/data/traffic_analysis.pt" "https://drive.google.com/uc?id=1y-IfToCjRXa3ZdC1JpnKRopC7mcQW-5z"
