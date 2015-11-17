#!/bin/bash
docker rm -f $(docker ps -a | grep -v IN | awk '{print $1}')
