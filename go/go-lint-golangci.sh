#!/bin/bash

# echo "The script you are running has:"
# echo "basename: [$(basename "$0")]"
# echo "dirname : [$(dirname "$0")]"
# echo "pwd     : [$(pwd)]"

# docker run -t --rm -v $(pwd):/app -v $(dirname "$0")/.golangci.yaml:/root/.golangci.yaml -w /app golangci/golangci-lint:v2.1.2 golangci-lint run $@
docker run -t --rm -v $(pwd):/app -w /app golangci/golangci-lint:v2.1.2 golangci-lint run $@