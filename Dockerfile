FROM ubuntu:20.04

# Prevents interactive prompts during package installation
ARG DEBIAN_FRONTEND=noninteractive

# Update and install Python + pip + Flask
RUN apt update && \
    apt install -y python3 python3-pip && \
    pip3 install flask

# Create working directory
WORKDIR /app

# Copy your Flask app
COPY app.py .

# Expose the port Flask will run on
EXPOSE 8080

# Command to run the app
CMD ["python3", "app.py"]
