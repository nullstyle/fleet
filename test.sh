#!/bin/bash -e

source ./build

if [ -z "$PKG" ]; then
    PKG="./agent ./config ./event ./fleetctl ./job ./machine ./pkg ./registry ./sign ./ssh ./unit ./integration-tests"
fi

# Unit tests
echo
go test -i $PKG
go test -cover -v $PKG
