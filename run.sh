#!/usr/bin/env bash

docker build -t ipset .
docker run -it --privileged ipset
