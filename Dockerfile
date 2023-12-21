FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y python3.11 python3-pip

# Install Flask inside the virtual environment
RUN pip3 install flask

WORKDIR /app
