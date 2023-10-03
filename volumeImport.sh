#!/bin/bash

VOLUME_NAME="mysql-data"
TAR_FILE="mysql_data_volume.tar"

echo "Importing data from $TAR_FILE to Docker volume $VOLUME_NAME..."
sudo docker run --rm --volume $VOLUME_NAME:/volume -v $(pwd):/backup alpine sh -c "rm -rf /volume/* /volume/..?* /volume/.[!.]* ; tar -xf /backup/$TAR_FILE -C /volume"
echo "Import completed."
