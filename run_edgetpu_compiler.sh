#!/bin/sh

docker run -it \
    -v `pwd`:/workspace \
    -w /workspace \
    -t edgetpu:latest \
    /bin/sh -c "edgetpu_compiler $1 $2"
