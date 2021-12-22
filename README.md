# Docker

## Commands

### Run image
Run a new container, and clone the image if don't exist.
```bash
docker run <NAME_IMAGE:VERSION>
```

### Clone image
Clone the image, but not run the container.
```bash
docker pull <NAME_IMAGE:VERSION>
```

### See images hosted
```bash
docker images
```

```bash
docker images | head
```

### Show running containers
```bash
docker ps
```

```bash
docker ps -a
```

### Logs container
```bash
docker logs <CONTAINER_ID>
```

```bash
docker logs <CONTAINER_NAME>
```

### Execute a command in a current running container

```bash
docker exec -it <CONTAINER_id>
```

### Stop container
```bash
docker stop <CONTAINER_ID1> <CONTAINER_ID2> ...
```

### Run image in background
```bash
docker run -d <CONTAINER_ID>
```

## Dockerfile

```dockerfile
FROM <IMAGE>:<TAG>

WORKDIR /<DIRECTORY_NAME>
COPY . .
RUN yarn install --<ENVIRONMENT_NAME>

CMD ["<COMAND>", "<DIRECTORY_NAME>/src/<FILE>"]
```

```dockerfile
FROM node:12.22.1-alpine3.11

WORKDIR /app
COPY . .
RUN yarn install --production

CMD ["node", "app/src/index.js"]
```

## Build a container
```bash
docker build -t <IMAGE_NAME>
```

### Expose ports to local network
```bash
docker run -dp <LISTENING_PORT>:<LISTENING_PORT> <IMAGE_NAME>
```
### Volumes in docker
```bash
docker run -d -v <ORIGIN_PATH>/<PATH> -p <LISTENING_PORT>:<LISTENING_PORT> <IMAGE_NAME>
```

#### Example
```bash
docker run -d -v /Users/kbs/example-docker/app/etc/todos -p 3000:3000 getting-started
```








