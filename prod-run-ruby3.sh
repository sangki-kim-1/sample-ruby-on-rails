#!/bin/sh

. ./env.sh

echo "IMAGE_NAME = $IMAGE_NAME"

docker build \
  -t "$IMAGE_NAME" .

docker run -it --rm \
  -p 3000:3000 \
  --name "$CONTAINER_NAME" \
  "$IMAGE_NAME"

# docker run -it --rm \
#   -p 3000:3000 \
#   -w /rails \
#   --name "$CONTAINER_NAME" \
#   "$IMAGE_NAME" /bin/bash

