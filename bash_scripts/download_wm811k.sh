#!/bin/bash
# download_wm811k.sh

set -e  # Exit on error

echo "=== Downloading WM-811K Dataset ==="

# Create data directory
DATA_DIR="$HOME/Schreibtisch/projects/data/wm811k"
mkdir -p $DATA_DIR

echo "Data directory: $DATA_DIR"

# Download dataset from Kaggle
echo "Downloading from Kaggle..."
kaggle datasets download -d qingyi/wm811k-wafer-map -p $DATA_DIR

# Unzip
echo "Extracting files..."
cd $DATA_DIR
unzip -o wm811k-wafer-map.zip
rm wm811k-wafer-map.zip  # Remove zip after extraction

echo "Dataset downloaded successfully!"
echo "Location: $DATA_DIR"
ls -lh $DATA_DIR

echo ""
echo "Next steps:"
echo "1. Explore data with: python explore_wm811k.py"
echo "2. Preprocess data with: python preprocess_wm811k.py"