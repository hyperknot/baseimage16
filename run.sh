#!/usr/bin/env bash

docker stop baseimage16
docker rm baseimage16

docker run --name baseimage16 --rm -it \
    baseimage16 \
    /sbin/my_init -- bash -l

