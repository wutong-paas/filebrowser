#! /bin/bash

export TAG=v0.1.16

git add .
git commit -m "release ${TAG}"
git push

git tag -a ${TAG} -m "release ${TAG}"
git push origin ${TAG}
make build-frontend
goreleaser --clean