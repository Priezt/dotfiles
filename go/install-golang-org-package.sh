#!/bin/sh

mkdir -p $GOPATH/src/golang.org/x
cd $GOPATH/src/golang.org/x
git clone --depth=1 https://github.com/golang/$1.git
