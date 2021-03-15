#!/bin/bash

docker run -it --rm  \
-p 9000:9000 \
-v "$(pwd)/build/Release/"://usr/local/bin \
-v "$(pwd)/../data":/data \
--network dike-net \
--name minioserver \
ubuntu:20.04 dikeCS
#ubuntu:20.04 "$@"
