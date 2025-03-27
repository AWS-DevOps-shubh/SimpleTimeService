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

## Prerequisites
- AWS EC2 instance
- Docker installed
- Basic understanding of command-line


## Step by Step Installation
SSH access to your EC2 instance
```bash
ssh -i "key-name" username@ec2-ip-address.compute-1.amazonaws.com
```
