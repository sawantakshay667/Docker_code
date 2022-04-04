#!/bin/bash

# following cmd for installing docker in AWS EC2 instance
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo yum install docker

# Start the docker service
sudo service docker start

# Start the systemd utility of docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# Download the nginx container
sudo docker pull nginx

# Create directory docker-share/html
# sudo mkdir ~/docker-share
# sudo mkdir ~/docker-share/html

# Docker nginx use port 8080 to public ip
# sudo docker run -d -p 8080:80 -v ~/docker-share/html:/usr/share/nginx/html --hostname nginx-container nginx