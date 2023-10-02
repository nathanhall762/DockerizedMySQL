
# Dockerized MySQL with Utility Scripts

This repository contains utility scripts to manage a Dockerized MySQL instance, import/export the Docker image, and run SQL commands or scripts against the MySQL container.

## Pre-requisites

- Docker installed on your machine.
- Git (to clone the repository).

## Setup

1. **Clone the Repository**:

    ```bash
    git clone [REPO_URL]
    cd [REPO_NAME]
    ```

2. **Import Docker Image**:

    If you have the exported Docker image tar file (`mysql_image.tar`) in the repository, you can import it using:

    ```bash
    ./dockerImport.sh
    ```

    This will load the Docker image into your local Docker environment.

3. **Run the MySQL Container**:

    Use Docker commands to run the MySQL container. Example:

    ```bash
    docker run --name MySQL -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
    ```

## Utility Scripts

1. **addData.sh**:

    Use this script to run the SQL script (`exampleAddData.sql`) inside the MySQL container.

    ```bash
    ./addData.sh
    ```

2. **mySQLCommand.sh**:

    Use this script to run arbitrary SQL commands against the MySQL container. Replace `YOUR_SQL_COMMAND` with the desired SQL command.

    ```bash
    ./mySQLCommand.sh "YOUR_SQL_COMMAND"
    ```

    Example:

    ```bash
    ./mySQLCommand.sh "SHOW DATABASES;"
    ```

3. **dockerExport.sh**:

    This script exports the Docker image of your MySQL container to a tar file (`mysql_image.tar`).

    ```bash
    ./dockerExport.sh
    ```

4. **dockerImport.sh**:

    This script imports the Docker image from the tar file (`mysql_image.tar`) into your local Docker environment.

    ```bash
    ./dockerImport.sh
    ```

## Notes

- Ensure all scripts have executable permissions (`chmod +x script_name.sh`).
- Modify the scripts as needed to suit your specific environment or configuration.
- Always ensure you're working with the correct Docker container and image names.
