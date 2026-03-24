# Containerized PHP Application with MySQL and Nginx

A fully containerized PHP web application connected to a MySQL database and served through Nginx using Docker and Docker Compose. Designed for local development and cloud deployment (e.g., EC2).

## Project Overview

This project demonstrates how to:

- Run a PHP application inside a Docker container
- Connect it to a MySQL database container
- Serve the application using Nginx
- Use Docker Compose to orchestrate all services

> **Note:** All project files (PHP scripts, SQL schema, and Nginx configuration) are manually created.

## Project Files

- `Dockerfile` – PHP container setup
- `docker-compose.yaml` – Orchestrates PHP, MySQL, and Nginx containers
- `nginx/default.conf` – Nginx configuration for PHP-FPM
- `app/` – PHP scripts (index, insert, display)
- `crud.sql` – Database creation and table schema

## Requirements

- Docker
- Docker Compose
- Git
- Linux-based system (Ubuntu, Amazon Linux, EC2 instance, or similar)

## Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/RiturajChaudhary/Containerize-php-app-and-mysql-and-deployed-in-nginx-webserver.git
```

### 2. Build and Start Containers

```bash
docker-compose up -d --build
```

Verify that the containers are running:

```bash
docker ps
```

### 3. Access the Application

Open your browser and navigate to:

```
http://<server-ip>:8080
```

## Working with MySQL

### Access MySQL Container

```bash
docker exec -it mysql-db mysql -u root -p
```

Enter the root password when prompted.

### Select the Database

```sql
USE php_app;
```

### View Tables

```sql
SHOW TABLES;
```

### Query Table Data

Example for `students` table:

```sql
SELECT * FROM students;
```

### Exit MySQL

```sql
EXIT;
```

Deployment Notes

- Ensure the required ports are open:
  - Port 80 (Nginx)
  - Port 3306 (MySQL) only if direct database access is needed
- Docker service must be running on the host machine
- Recommended for EC2 deployment or local development

## Troubleshooting

- If a container name conflict occurs, remove the existing container:

```bash
docker rm -f <container-name>
```

- If the application does not load, check:
  - Docker containers are running
  - Nginx is listening on the correct port
  - Security group allows inbound traffic

## Best Practices

- Use strong database credentials in production
- Avoid exposing MySQL port publicly
- Keep persistent database data in volumes
- Restart containers after configuration changes

## License

This project is intended for educational and demonstration purposes.

