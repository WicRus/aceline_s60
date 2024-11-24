#!/bin/bash
. cfg
docker run $FLAGS $IMG:$TAG bash "$@"