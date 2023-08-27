#!/bin/bash

set -ex
IMAGE_NAME="alxshelepenok/port-forward"
REGISTRY="docker-hosted.nexus.infrastructure.alxshelepenok.com"
TAG="${1}"
docker build -t ${IMAGE_NAME}:"${TAG}" .
docker tag ${IMAGE_NAME}:"${TAG}" ${REGISTRY}/${IMAGE_NAME}:"${TAG}"
docker push ${REGISTRY}/${IMAGE_NAME}:"${TAG}"
