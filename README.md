# SimpleTimeService

SimpleTimeService is a minimalist microservice that returns the current timestamp and the visitor's IP address in JSON format.

## 🚀 Features
- returns a pure JSON response:
  ```json
  {
  "timestamp": "<current date and time>",
  "ip": "<the IP address of the visitor>"
  }
- Lightweight Flask-based web server and Dockerized.
- Runs as a non-root user inside the container.
🏗️ Project Structure
/simple-time-service
│── app.py               # Main application file
│── Dockerfile           # Docker configuration
│── requirements.txt     # Dependencies
│── README.md            # Documentation

## Prerequisites
- AWS EC2 instance
- Docker installed
- Basic understanding of command-line


## Step by Step Installation
SSH access to your EC2 instance
```bash
ssh -i "key-name" username@ec2-ip-address.compute-1.amazonaws.com
```
### Update your server
```bash
sudo apt-get update
```
### Install Docker on server
```bash
sudo apt install docker.io -y
```
### Permission to Docker to run without sudo to adding user to Docker group
```bash
  sudo usermod -aG docker $USER
  ```
### After running this command, Add Docker to New group:
  ```bash
  newgrp docker
  ```
**Note:** Please review the Dockerfile to understand its configuration before proceeding with the build.

### Build the Docker image from the Dockerfile
```bash
docker build -t simple-time-service .
```
### To show the Docker image
```bash
docker images
```
### Run the Container from the Build image
```bash
docker run -d -p 5000:5000 simple-time-service
```
### To show the running Container
```bash
docker ps
```
**Note:** Please open the port 5000 in Security group

### To test our Application on Browse running or not
```bash
http://localhost:5000/
```
**Note:** Replace your AWS EC2 IP to localhost




