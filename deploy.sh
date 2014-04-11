#!/usr/bin/env bash

set -e

git push origin andxyz > /dev/null 2>&1 && 
echo "updated deployer@deployer.andxyz.com:andxyz-writings.git repo"

git push github andxyz > /dev/null 2>&1 &&
echo "updated git@github.com-andxyz:andxyz/andxyz-writings.git repo"

bundle exec rake clean > /dev/null 2>&1 && 
bundle exec rake generate > /dev/null 2>&1 && 
bundle exec rake deploy > /dev/null 2>&1 && 
echo "deployed to http://andxyz.com"

exit 0
