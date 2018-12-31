#!/bin/bash

docker build --tag streamsets-kinesis:3.6.1 . -f $STREAMSETS_HOME/docker/streamsets-kinesis/Dockerfile