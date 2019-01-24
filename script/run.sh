#!/bin/bash
docker stop streamsets-kinesis
docker rm streamsets-kinesis

docker run -t -d \
 -v $STREAMSETS_DATA:/data \
 -v $STREAMSETS_FS_DATA:/fsData \
 -p 18630:18630 \
 --ulimit nofile=32768:32768 \
 --name streamsets-kinesis streamsets-kinesis:3.6.1