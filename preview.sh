#!/usr/local/bin/bash

set -x
set -e

bundle exec jekyll clean
bundle exec jekyll serve
