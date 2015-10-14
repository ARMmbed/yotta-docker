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
	add-apt-repository -y ppa:terry.guo/gcc-arm-embedded && \
	apt-get -y update && \
	echo -e "Explanation: get gcc-arm-none-eabi from ppa\nPackage: gcc-arm-none-eabi\nPin: origin \"ppa.launchpad.net\"\nPin-Priority: 1001" >> /etc/apt/preferences.d/gcc-arm-none-eabi && \
	apt-get -y install gcc-arm-none-eabi

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
RUN pip install -U pyopenssl ndg-httpsclient pyasn1 requests yotta