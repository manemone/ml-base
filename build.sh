#!/usr/bin/env bash

docker build $@ -f Dockerfile.gpu -t manemonetech/ml-base .
docker build $@ -f Dockerfile.cpu -t manemonetech/ml-base-cpu .
