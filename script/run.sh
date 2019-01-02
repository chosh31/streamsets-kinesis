#!/bin/bash
docker stop streamsets-kinesis
docker rm streamsets-kinesis

docker run -t -d \
 -v $STREAMSETS_DATA:/data \
 -v $STREAMSETS_FS_DATA:/fsData \
 -p 18630:18630 \
 --name streamsets-kinesis streamsets-kinesis:3.6.1