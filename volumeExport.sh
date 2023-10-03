#!/bin/bash

VOLUME_NAME="mysql-data"
TAR_FILE="mysql_data_volume.tar"

echo "Exporting Docker volume $VOLUME_NAME to $TAR_FILE..."
sudo docker run --rm --volume $VOLUME_NAME:/volume -v $(pwd):/backup alpine tar -cf /backup/$TAR_FILE -C /volume ./
echo "Export completed."
