## yotta Docker Image

[![Circle CI](https://circleci.com/gh/ARMmbed/yotta-docker.svg?style=shield&circle-token=29f7822201a28674e78f1c36b24f5fe2e01fe019)](https://circleci.com/gh/ARMmbed/yotta-docker)

The yotta Docker image

### Prerequisites

[Docker](https://www.docker.com/)

### Build the docker image

The helper script ```docker-build``` will create your image. You can pass any extra docker commands into the helper such as ```--no-cache```.

```
./docker-build.sh <docker-commands>
```

This generates an image named ```mbed/yotta```.

### Running the docker container

The run helper script accepts a path to mount as the workspace (defaults to `$HOME`). This means you can use your favourite editor on your machine and use the docker container to just build your source.

```
./docker-run.sh <path>
```

### Yotta proxy

The ```yotta``` file offers a proxy command to run yotta commands inside the yotta docker container from your working directory without explicitly opening a docker shell. This means you can execute yotta commands as if yotta was installed on your host.

See [yotta](yotta.md) for more information.