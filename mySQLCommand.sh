#!/bin/bash

# This script runs commands to a running MySQL container.
# TO USE: ./mySQLCommand.sh "SQL command"
# Example: ./mySQLCommand.sh "SHOW DATABASES;"

# Name of the running MySQL container
CONTAINER_NAME="MySQL"

# Command to list databases using the MySQL client
COMMAND="mysql -uroot -p -e '$1;'"

# Execute the command inside the container
sudo docker exec -it $CONTAINER_NAME bash -c "$COMMAND"
