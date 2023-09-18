#!/bin/bash

docker image tag bastion-host:latest ghcr.io/dragory/bastion-host:latest
docker push ghcr.io/dragory/bastion-host:latest
