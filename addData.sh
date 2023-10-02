#!/bin/bash

# This script copies an SQL file to a running MySQL container and executes it.
# TO USE: ./runSQLFileInContainer.sh path/to/sqlfile.sql
# Example: ./runSQLFileInContainer.sh /exampleAddData.sql

# Check if a file path was provided
if [ -z "$1" ]; then
    echo "Please provide the path to the SQL file."
    exit 1
fi

CONTAINER_NAME="MySQL"
LOCAL_FILE_PATH=$1
FILE_NAME=$(basename $LOCAL_FILE_PATH)

# Copy the SQL file into the container's /tmp directory
sudo docker cp $LOCAL_FILE_PATH $CONTAINER_NAME:/tmp/$FILE_NAME

# Execute the SQL script using the MySQL client inside the container
sudo docker exec -it $CONTAINER_NAME bash -c "mysql -uroot -p < /tmp/$FILE_NAME"
