#!/bin/bash
echo "Hello from user data!" > /home/ec2-user/user_data_output.txt

# Update the package manager
yum update -y

# Install Docker
yum install -y docker

# Start the Docker service
service docker start

# Add the ec2-user to the docker group to run Docker without sudo
sudo usermod -a -G docker ec2-user

# Optional: Enable Docker to start on boot
chkconfig docker on