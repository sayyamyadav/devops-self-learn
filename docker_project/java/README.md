# Java Docker Project

This project demonstrates how to create a simple Java application and run it inside a Docker container.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Building the Docker Image](#building-the-docker-image)
- [Running the Docker Container](#running-the-docker-container)
- [Code Structure](#code-structure)
- [License](#license)

## Getting Started

This project provides a simple Java application that prints "Hello, Docker!" along with the current date.

### Prerequisites

- Docker installed on your machine or server.
- Access to a terminal or command line interface.

## Building the Docker Image

To build the Docker image, navigate to the project directory containing the `Dockerfile` and run the following command:

```bash
docker build -t java-app:latest .
## Running the Docker Container
```bash

docker run java-app:latest

sql
Hello, Docker! Current date: <current_date>
