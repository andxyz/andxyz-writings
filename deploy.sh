#!/bin/sh

git push origin andxyz > /dev/null 2>&1 && echo "updated andxyz repo"
hub push github andxyz > /dev/null 2>&1 && echo "updated github repo"

bundle exec rake clean > /dev/null 2>&1 && bundle exec rake generate > /dev/null 2>&1 && bundle exec rake deploy > /dev/null 2>&1 && echo "deployed to http://andxyz.com"
