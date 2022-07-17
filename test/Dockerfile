FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install -y git sudo locales && locale-gen en_US.UTF-8

WORKDIR /app

RUN DEBIAN_FRONTEND=noninteractive TZ=America/New_York apt install -y \
    build-essential \
    cmake \
    pkg-config \
    libdbus-glib-1-dev \
    libgirepository1.0-dev \
    libfmt-dev \
    libgtest-dev \
    libgmock-dev \
    python3-dev \
    python3-pip
COPY test/requirements.txt .
RUN python3 -m pip install -r requirements.txt
RUN rm requirements.txt