#!/bin/bash

set -ex

# Clone the project GitHub Repository
git clone -b docker https://874faae3f3ac5d482909ce9056832c2ea9719644:x-oauth-basic@github.com/gkrishnaprakashd/data-asset-catalog.git.git /home/ec2-user/applications/data-asset-catalog/

cd /home/ec2-user/applications/data-asset-catalog/

docker run -it --rm -v /home/ec2-user/applications/data-asset-catalog/:maven-3.3-jdk-8 mvn clean install

docker build -t dataassetcatalog -f docker/Dockerfile .

docker run -d -p 8080:8080 --name dataassetcatalog dataassetcatalog