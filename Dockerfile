# ------------------------------------------------------------------------------
# Pull base image
FROM ubuntu:trusty
MAINTAINER Rob Moran <rob.moran@arm.com>

# ------------------------------------------------------------------------------
# Install base
RUN apt-get -y update && \
	apt-get -y dist-upgrade && \
	apt-get -y install curl git

# ------------------------------------------------------------------------------
# Install build tools
RUN apt-get -y install build-essential cmake ninja-build clang-3.5

# ------------------------------------------------------------------------------
# Install arm gcc
RUN apt-get -y install software-properties-common && \
	add-apt-repository -y ppa:team-gcc-arm-embedded/ppa && \
	apt-get -y update && \
	apt-get -y install gcc-arm-embedded

# ------------------------------------------------------------------------------
# Install python
RUN apt-get -y install python python-setuptools python-usb && \
	apt-get -y remove python-pip && \
	easy_install pip

# ------------------------------------------------------------------------------
# Install python build requirements
RUN apt-get -y install python-dev libffi-dev libssl-dev libxml2-dev

# ------------------------------------------------------------------------------
# Install yotta
RUN pip install -U pyopenssl ndg-httpsclient pyasn1 requests yotta==0.16.4
