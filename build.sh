#!/bin/bash

set -ex
IMAGE_NAME="waterscape/port-forward"
TAG="${1}"
docker build -t ${IMAGE_NAME}:"${TAG}" .
