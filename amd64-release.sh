#! /bin/bash

export NAMESPACE=filebrowser
export VERSION=v1.2.0-stable-amd64

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o ./bin/filebrowser-amd64 main.go
docker build . -t swr.cn-southwest-2.myhuaweicloud.com/wutong/${NAMESPACE}:${VERSION} -f Dockerfile.arm64
docker push swr.cn-southwest-2.myhuaweicloud.com/wutong/${NAMESPACE}:${VERSION}