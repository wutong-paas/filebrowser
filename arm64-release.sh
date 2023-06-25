#! /bin/bash

export NAMESPACE=filebrowser
export VERSION=v1.2.0-stable-arm64

CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -a -o ./bin/filebrowser-arm64 main.go
docker build . -t swr.cn-southwest-2.myhuaweicloud.com/wutong/${NAMESPACE}:${VERSION} -f Dockerfile.arm64
docker push swr.cn-southwest-2.myhuaweicloud.com/wutong/${NAMESPACE}:${VERSION}