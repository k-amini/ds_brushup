# From [ https://github.com/bgsedatascience ] (mostly)

# Script that willl get docker
wget https://get.docker.com/
mv index.html getDocker.sh
chmod 744 getDocker.sh 
sh getDocker.sh 
sudo usermod -aG docker ubuntu

# Basic Docker commands to run containers
# It appears to download ones that don't exist locally
docker run hello-world
docker run busybox

# List docker processes
docker ps
ps
docker ps -a

# Specify a name for a container instance
docker run --name bboxking busybox
docker ps -a

#Can't run two at the same time
docker run --name bboxking busybox

# So remove a container
docker rm bboxking
docker ps -a
# And re-run it
docker run --name bboxking busybox
docker ps -a

# Get the container
docker run --name bboxking busybox echo "heyo"
docker ps -a
# But it lingers, so add a -rm flag
docker rm bboxking
docker run --name bboxking --rm busybox echo "heyo"
docker ps -a

# Interactive terminal for docker 
docker run --name bboxking --rm -it busybox /bin/sh
# By default the files are volatile, they don't survive the 
# removal of the containers

# But, you can mount a folder to the container which will have
# read/write access to the folder
docker run --name bboxking --rm -it -v /home/ubuntu:/home busybox /bin/sh

# Create a container for Docker
# > using a port redirect from server 80 to container 8888
# > mounting server folder /home/ubuntu to container folder /home/joyvan/work
sudo docker run -d --name notebook -v /home/ubuntu:/home/joyvan/work -p 80:8888 jupyter/datascience-notebook
# Check that it is running
docker ps
# Then connect: 
http://ec2-3-15-191-164.us-east-2.compute.amazonaws.com:80
# Get the token using:
docker logs notebook
# Then upload the notebook using the web interface

# To restart a stopped container, use 
docker restart notebook # where notebook is the container name

# To stop a running container, use
docker stop notebook # where notebook is the container name

# Docker add new notebook
docker run -v $PWD:/home/jovyan/wor