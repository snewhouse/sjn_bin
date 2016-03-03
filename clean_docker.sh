#!/bin/bash
docker rm -f $(docker ps -a | grep -v IN | awk '{print $1}') && \
docker rmi -f $(docker images | grep none | awk '{print $3}');
