## The yotta Docker proxy command

The yotta Docker container is a well-known yotta environment you can download to your local filesystem without having to install anything and avoids disruption of your host system.

The ```yotta``` bash script allows you to use the yotta Docker container as a drop-in replacement for the yotta command.

### Prerequisites

[Docker](https://www.docker.com/)

### Installataion

```
docker pull mbed/yotta
```

Copy the [yotta script](yotta) somewhere onto your machine, ensuring it is executable.

### Usage

To use it, change into your project directory where you want to run yotta and simply execute the proxy command with the arguments you need. For example:

```
git clone <mbedos project>
cd <mbedos project>
/<path containing proxy>/yotta target frdm-k64f-gcc
/<path containing proxy>/yotta build
```

Adding the yotta proxy command to your path or sym-linking it into your bin directory will then remove the need to supply the entire path to the proxy command:

```
git clone <mbedos project>
cd <mbedos project>
yotta target frdm-k64f-gcc
yotta build
```