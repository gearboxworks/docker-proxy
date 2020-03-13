![Gearbox](https://github.com/gearboxworks/gearbox.github.io/raw/master/Gearbox-100x.png)


# Another [Gearbox](https://github.com/gearboxworks/) Docker container service - nginx
This is the repository for the [nginx](<no value>) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).


## Repository Info
GitHub commit: ![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-nginx?style=flat-square)

GitHub release(latest): ![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-nginx) ![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-nginx?sort=semver) [![release-state](https://github.com/gearboxworks/docker-nginx/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-nginx/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service | GitHub Version | Docker Version | Docker Size | Docker Tags | Dockerfile |
| ------- | -------------- | -------------- | ----------- | ----------- | ---------- |
| nginx | ![nginx](https://img.shields.io/badge/nginx-1.12.2-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/nginx/1.12.2) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/nginx/1.12.2) | `1.12.2`, `1.12` | _([1.12.2/DockerfileRuntime](https://github.com/gearboxworks/docker-nginx/blob/master/1.12/DockerfileRuntime))_ |
| nginx | ![nginx](https://img.shields.io/badge/nginx-1.13.12-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/nginx/1.13.12) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/nginx/1.13.12) | `1.13.12`, `1.13` | _([1.13.12/DockerfileRuntime](https://github.com/gearboxworks/docker-nginx/blob/master/1.13/DockerfileRuntime))_ |
| nginx | ![nginx](https://img.shields.io/badge/nginx-1.14.2-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/nginx/1.14.2) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/nginx/1.14.2) | `1.14.2`, `1.14` | _([1.14.2/DockerfileRuntime](https://github.com/gearboxworks/docker-nginx/blob/master/1.14/DockerfileRuntime))_ |
| nginx | ![nginx](https://img.shields.io/badge/nginx-1.15.9-green.svg) | ![Docker Version)](https://img.shields.io/docker/v/gearboxworks/nginx/1.15.9) | ![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/nginx/1.15.9) | `1.15.9`, `1.15`, `latest` | _([1.15.9/DockerfileRuntime](https://github.com/gearboxworks/docker-nginx/blob/master/1.15/DockerfileRuntime))_ |



## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/)
framework.
However, due to the flexability of Gearbox, it can be used outside of this framework.
You can either use it directly from DockerHub or GitHub.


## Method 1: GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/nginx-docker.git`

### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for Gearbox admins). Push all versions from the base directory or specific versions from each directory.

### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


## Method 2: Docker Hub

### Setup from Docker Hub
A simple `docker pull gearbox/nginx` will pull down the latest version.

### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name nginx-latest --restart unless-stopped --network gearboxnet gearbox/nginx:latest`

### Stopping
stop - Stop a Docker container.

`docker stop nginx-latest`

### Remove container
rm - Remove the Docker container.

`docker container rm nginx-latest`

### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name nginx-latest --network gearboxnet gearbox/nginx:latest`

### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name nginx-latest -i -t --network gearboxnet gearbox/nginx:latest /bin/bash`

### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

```
SSH_PORT="$(docker port nginx-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```

