#!/bin/bash

docker run -t --rm -d \
 -v $STREAMSETS_DATA:/data -p 18630:18630 \
 --name streamsets-kinesis streamsets-kinesis:3.6.1