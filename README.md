## Docker Basic Commands
Docker Basic Commands
```
Basic
: docker version
: docker -v
: docker info
: docker --help
: docker login
————————————
Images
: docker images
: docker pull
: docker rmi
————————————
Containers
: docker ps
: docker run
: docker start
: docker stop
————————————
System
: docker stats
: docker system df
: docker system prune

```
# Docker Version

We can check docker version using this command.
```bash
docker --version
```

# Docker Info

We can get docker information using this command.
```bash
docker info
```

## Docker Start

Use following command to start docker in linux.

```bash
sudo docker start
```

## Docker Stop

Use following command to stop docker in linux.

```bash
sudo docker stop
```

# Docker Images

What are Images
Docker Images are templates used to create Docker containers
Container is a running instance of image

### Where are Images Stored
Registries (e.g. docker hub)
Can be stored locally or remote

```
: docker images --help
: docker pull image
: docker images
: docker images -q
: docker images -f “dangling=false”
: docker images -f “dangling=false” -q

: docker run image
: docker rmi image
: docker rmi -f image

: docker inspect
: docker history imageName
```
### List Docker images

```bash
docker images
```

### Run Docker Image
```bash
docker run <image name>

```
### Pull Docker Image
```bash
docker pull <image name>
docker pull <image name : tag>
ex: docker pull ubuntu:18.04
```

### Help Docker Image
```bash
docker pull --help
```

### Show Docker Image ID
Only show images Ids

```bash
docker images -q
```

### Delete Docker Image
We can remove docker images using following command.

```bash
docker rmi <image id>
docker image remove <image id>
```
### Docker Dangling Image
A dangling images is one that is not tagged and is not referenced by any containers

```
 docker images -f “dangling=false” 
```

# Docker Containers

### What are Containers:
Containers are running instances of Docker Images

```
: docker ps
: docker run ImageName
: docker start ContainerName/ID
: docker stop ContainerName/ID

: docker pause ContainerName/ID
: docker unpause  ContainerName/ID

: docker top ContainerName/ID
: docker stats ContainerName/ID

: docker attach ContainerName/ID

: docker kill ContainerName/ID
: docker rm ContainerName/ID

: docker history ImageName/ID
```

### Help Docker container
```bash
docker ps --help
```

### List All the containers
```bash
docker ps -a
```

### Run Docker containers
```bash
docker run <image name>
docker run -it <image name>
docker run -it <image name> bash
docker run --name myTest1 -it <image name> bash
```

### Inspect Docker Image
```bash
docker inspect <image Id>

### Start Docker container
```bash
docker start <container Id>
```

### Stop Docker containers
```bash
docker stop <container Id>
```

# Dockerfile
A text file with instructions to build image
Automation of Docker Image Creation

```
FROM
RUN
CMD
```
- Step 1 : Create a file named Dockerfile

- Step 2 : Add instructions in Dockerfile

- Step 3 : Build dockerfile to create image

- Step 4 : Run image to create container

### COMMANDS
```
: docker build 
: docker build -t ImageName:Tag directoryOfDocekrfile
ex: docker build -t <image name> --file Dockerfile.dev .

: docker run image
```

## Docker Volume 

Volumes are the preferred mechanism for persisting data generated by and used by Docker containers
```
: docker volume  //get information
: docker volume create
: docker volume ls
: docker volume inspect
: docker volume rm
: docker volume prune
```
Instead of deleting containers one by one of docker ps -a , we can use docker container prune.  and for docker ps (running containers) we can use  docker rm $(ps -aq)

### Use of Volumes

Decoupling container from storage
Share volume (storage/data) among different containers
Attach volume to container
On deleting container volume does not delete

### create volume
``` 
docker volume create <volume name>
```
### Commands
```
docker run --name MyJenkins1 -v myvol1:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins
docker run --name MyJenkins2 -v myvol1:/var/jenkins_home -p 9090:8080 -p 60000:50000 jenkins
docker run --name MyJenkins3 -v /Users/harsha/Desktop/Jenkins_Home:/var/jenkins_home -p 9191:8080 -p 40000:50000 jenkins
