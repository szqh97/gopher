#!/usr/bin/env bash

CURDIR=`pwd`
OLDGOPATH="$GOPATH"
OLDGOBIN="$GOBIN"
export GOPATH="$CURDIR"
export GOBIN=$GOPATH/bin


gofmt -w src/gopher

go install server

export GOPATH="$OLDGOPATH"
export GOBIN="$OLDGOBIN"

echo 'finished'
