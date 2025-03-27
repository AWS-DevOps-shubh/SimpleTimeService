# SimpleTimeService

SimpleTimeService is a minimalist microservice that returns the current timestamp and the visitor's IP address in JSON format.

## 🚀 Features
- returns a pure JSON response:
  ```json
  {
  "timestamp": "<current date and time>",
  "ip": "<the IP address of the visitor>"
  }
- Lightweight and Dockerized.
- Runs as a non-root user inside the container.
