#!/bin/bash
BUILD_DIR=$(pwd)
ARTIFACT=$1
mkdir -p /go/src/github.com/ci-pipeline/
cp -r cloudformation-resource /go/src/github.com/ci-pipeline/
cd /go/src/github.com/ci-pipeline/cloudformation-resource/${ARTIFACT}
go get
go build
cp ${ARTIFACT} ${BUILD_DIR}/${ARTIFACT}/${ARTIFACT}
