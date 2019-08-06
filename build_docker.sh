#!/bin/sh

docker build -t edgetpu .
docker tag edgetpu:latest edgetpu:`./run_edgetpu_compiler.sh -v | awk '{print $5}' | tr -d '\r'`
