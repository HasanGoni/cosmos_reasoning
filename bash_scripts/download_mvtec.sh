#!/bin/bash
# download_mvtec.sh

set -e

DATA_DIR="$HOME/Schreibtisch/projects/data/mvtec"
CATEGORY="transistor"

echo "=== MVTec AD Dataset Downloader ==="
mkdir -p "$DATA_DIR"

# Check if already downloaded
if [ -d "$DATA_DIR/$CATEGORY" ]; then
    echo "Dataset already exists at $DATA_DIR/$CATEGORY"
    ls -lh "$DATA_DIR/$CATEGORY/"
    exit 0
fi

# Download from Kaggle
echo "Downloading $CATEGORY from Kaggle..."
kaggle datasets download -d leezhixiong/mvtec-transistor-dataset -p "$DATA_DIR" --unzip

echo "Done! MVTec transistor dataset downloaded!"
ls -lh "$DATA_DIR/$CATEGORY/"
