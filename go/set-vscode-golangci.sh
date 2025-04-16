#!/bin/bash

if [ -f "./.golangci.yaml" ]; then
	echo "repo golangci exists!"
	mkdir -p ./.vscode
	ln -s ./.golangci.yaml ./.vscode/.golangci.yaml
	echo "set: ./.golangci.yaml -> ./.vscode/.golangci.yaml"
else
	echo "repo golangci does not exist!"
	mkdir -p ./.vscode
	ln -s ~/dev-env/main/go/.golangci.yaml ./.vscode/.golangci.yaml
	echo "set: ~/dev-env/main/go/.golangci.yaml -> ./.vscode/.golangci.yaml"
fi