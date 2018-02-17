#!/usr/bin/env bash

set -x
set -e

git push origin andxyz 2>&1 > /dev/null
echo "updated deployer@deployer.andxyz.com:andxyz-writings.git repo"

git push github andxyz 2>&1 > /dev/null
echo "updated git@github.com-andxyz:andxyz/andxyz-writings.git repo"

bundle exec jekyll clean 2>&1 > /dev/null
bundle exec jekyll generate 2>&1 > /dev/null
bundle exec rake deploy 2>&1 > /dev/null
echo "deployed to https://andxyz.com"

exit 0
