# yocker

The yotta Docker image

## Prerequisites

[Docker](https://www.docker.com/)

### Build the docker image

The helper script ```docker-build``` will create you image. You can pass any extra docker commands into the helper such as ```--no-cache```.

```
./docker-build.sh <docker-commands>
```

This generates an image named ```mbed/yotta```.

### Running the docker container

The run helper script accepts a path to mount as the workspace (defaults to `$HOME`). This means you can use your favourite editor on your machine and use the docker container to just build your source.

```
./docker-run.sh <path>
```