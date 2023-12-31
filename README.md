
# MySQL Docker Project

This repository contains scripts and files to set up and interact with a MySQL Docker container.

## Prerequisites

- Docker installed on your machine.
- Docker CLI knowledge.
- Basic understanding of bash scripts.

## Getting Started

### Pulling the Docker Image

To get started, you need to pull the Docker image from Docker Hub:

```bash
sudo docker pull nathanhall762/mysql
```

### Running the MySQL Container

After pulling the image, you can run the MySQL container using the following command:

```bash
sudo docker run --name MySQL -v mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
```

This command will run the MySQL container with the root password set as `password`.

### Initial Setup After Pulling the Docker Image

Once you've pulled the Docker image and started the MySQL container, you'll want to first access the MySQL shell within the container. This is an essential step before executing any other scripts that interact with the database. Follow these steps:

1. Enter the running MySQL container's shell:

```bash
sudo docker exec -it MySQL bash
```

2. Start the MySQL client:

```bash
mysql -uroot -p
```

3. When prompted, enter the root password (password).

You will now be in the MySQL monitor. From here, you can execute SQL commands, manage databases, etc.

4. To exit the MySQL monitor, simply type:

```bash
exit
```
5. To exit the container's shell, just type:

```bash
exit
```

After performing this initial setup, you can run the provided scripts without needing to manually enter the MySQL container's shell.

### Exporting and Importing Volume Data

To ensure data persistence and share your database state with others, you can export and import the volume data where the database stores its files.
Exporting the Volume

To create a tar archive of your volume data, execute:

```bash
./volumeExport.sh
```

This will create a file named mysql_data_volume.tar.
Importing the Volume

To import data into your volume from a tar archive, execute:

```bash
./volumeImport.sh
```

Make sure the mysql_data_volume.tar file is in the current directory when you run the script.

### Interacting with the MySQL Container

There are two primary scripts to interact with the running MySQL container:

1. `mySQLScript.sh`: This script takes a SQL script file as an argument, copies the SQL script file into the container, and then executes it inside the container to add data to the MySQL database.
2. `mySQLCommand.sh`: This script allows you to run SQL commands directly on the running MySQL container.

## Usage

### Adding Data

To add data to the MySQL database, execute:

```bash
./mySQLScript.sh YOUR_SQL_SCRIPT_FILE_PATH.sql
```

### Running SQL Commands

To run SQL commands on the MySQL container, use:

```bash
./mySQLCommand.sh "YOUR_SQL_COMMAND_HERE"
```

Replace `YOUR_SQL_COMMAND_HERE` with your desired SQL command.

## Contribute

Feel free to fork, clone, and submit PRs. Any contributions, enhancements, or bug-fixes are welcome.
