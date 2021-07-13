# Docker

## Commands

### Run image
```bash
docker run <NAME_IMAGE:VERSION>
```

### Clone image
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

### Execute command in a container
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





