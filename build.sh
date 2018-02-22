#!/usr/bin/env bash

version=$(cat dnaseq-broad/VERSION)

CONTAINER_IMAGE="sd2e/dnaseq-broad:$version"

docker build -t ${CONTAINER_IMAGE} .
