
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
sudo docker run --name MySQL -e MYSQL_ROOT_PASSWORD=password -d nathanhall762/mysql
```

This command will run the MySQL container with the root password set as `my-secret-pw`.

### Interacting with the MySQL Container

There are two primary scripts to interact with the running MySQL container:

1. `addData.sh`: This script copies a SQL script (`exampleAddData.sql`) into the container and then executes it inside the container to add data to the MySQL database.
2. `mySQLCommand.sh`: This script allows you to run SQL commands directly on the running MySQL container.

## Usage

### Adding Data

To add data to the MySQL database, execute:

```bash
./addData.sh
```

### Running SQL Commands

To run SQL commands on the MySQL container, use:

```bash
./mySQLCommand.sh "YOUR_SQL_COMMAND_HERE"
```

Replace `YOUR_SQL_COMMAND_HERE` with your desired SQL command.

## Contribute

Feel free to fork, clone, and submit PRs. Any contributions, enhancements, or bug-fixes are welcome.
