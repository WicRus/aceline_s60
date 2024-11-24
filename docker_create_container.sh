#!/bin/bash
. cfg
docker build -t $IMG:$TAG --build-arg USER_ID=$USER_ID .