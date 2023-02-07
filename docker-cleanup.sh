#!/bin/bash

docker system prune -af
docker image prune -af
docker container prune -f
