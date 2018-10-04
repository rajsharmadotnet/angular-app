#!/bin/bash

NAME="ANGULAR APP"

#DOCKER_REGISTORY=hub.docker.hpecorp.net
DOCKER_REGISTORY=hub.docker.com
#DOCKER_REGISTORY_ORG=coe-integration
DOCKER_REGISTORY_REPO=rajteaser/angular-app
TAG=1.0

echo "Clearing traces from previous build"
sudo docker stop docker-angular-app
sudo docker rm docker-angular-app
#sudo docker rmi $DOCKER_REGISTORY/$DOCKER_REGISTORY_ORG/$DOCKER_REGISTORY_REPO:$TAG
sudo docker rmi $DOCKER_REGISTORY_REPO:$TAG

echo "Pulling the image"
#sudo docker pull $DOCKER_REGISTORY/$DOCKER_REGISTORY_ORG/$DOCKER_REGISTORY_REPO:$TAG
sudo docker pull $DOCKER_REGISTORY_REPO:$TAG

echo "Running the image"
#sudo docker run -td --name if_mpaas_onboarding_ui_development --restart unless-stopped -p 8080:8080 $DOCKER_REGISTORY/$DOCKER_REGISTORY_ORG/$DOCKER_REGISTORY_REPO:$TAG
sudo docker run -p 3000:80 -d $DOCKER_REGISTORY_REPO:$TAG