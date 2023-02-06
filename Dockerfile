# Dockerfile

# Script       : CamLuden
# Author       : Luden
# Github       : https://github.com/Luddenn
# Email        : ludenx10@gmail.com
# Date         : 06-02-2023
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/Luddenn/CamLuden"

# Working directory
WORKDIR /CamLuden/
# Add files 
ADD . /camluden

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./camluden.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t Luddenn/CamLuden:latest", "sudo docker run --rm -it Luddenn/CamLuden:latest"

## "sudo docker pull Luddenn/CamLuden", "sudo docker run --rm -it Luddenn/CamLuden"
