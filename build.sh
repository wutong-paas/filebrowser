#! /bin/bash

export TAG=v3.0.0-alpha.1

git add .
git commit -m "release ${TAG}"
git push

git tag -a ${TAG} -m "release ${TAG}"
git push origin ${TAG}
make build-frontend
goreleaser --clean