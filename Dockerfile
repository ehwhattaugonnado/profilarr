# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies and nano
RUN apt-get update && apt-get install -y nano && \
    pip install --no-cache-dir -r requirements.txt && \
    apt-get clean

# Set the default command to launch a shell
CMD ["bash"]
