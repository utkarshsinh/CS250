FROM ubuntu:20.04

# Set the timezone to UTC by default
ENV TZ=UTC

# Update the system and install required packages
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        python3 \
        python3-pip \
        git && \
    rm -rf /var/lib/apt/lists/*

# Install required Python packages
RUN pip3 install numpy scipy matplotlib

