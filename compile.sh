#!/usr/bin/env bash

docker run --rm -it \
 -v ${PICO_SDK_PATH}:/pico-sdk \
 -v $(pwd):/project \
 xingrz/rpi-pico-builder:latest \
 bash -c 'mkdir -p build && cd build && cmake .. && make'
 # bash -c 'mkdir -p build && cd build && cmake -E env PICO_SDK_PATH="${PICO_SDK_PATH}" .. '
 # bash -c 'mkdir -p build && cd build && cmake .. && make blink'
