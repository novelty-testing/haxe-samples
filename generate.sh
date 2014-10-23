#!/bin/bash
# rm -rf old generated files
sudo rm -rf haxe-generated/cpp/* haxe-generated/java/* haxe-generated/js/*

# generate files using maxleiko/haxe Docker container
docker run --rm -v `pwd`:/root/workspace:rw -t maxleiko/haxe
