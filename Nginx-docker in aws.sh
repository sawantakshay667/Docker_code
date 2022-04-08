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

# Docker nginx use port 8080 to public ip && trafer file from ~/docker-share/html to /usr/share/nginx/html && tag name nginx-container (For Linux Disto)
# sudo docker run -d -p 8080:80 -v ~/docker-share/html:/usr/share/nginx/html --hostname nginx-container nginx

# Docker nginx use port 8080 to public ip && trafer file from E:/website/PetLover to /usr/share/nginx/html && tag name web-server (For Windows Docker installation)
# docker run -d -p8080:80 -v E:/website/PetLover:/usr/share/nginx/html --name web-server nginx