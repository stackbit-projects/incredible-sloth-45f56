#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/60245f567e2d4d0015ea030b/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/60245f567e2d4d0015ea030b/webhook/build/ssgbuild > /dev/null
hugo
curl -s -X POST https://api.stackbit.com/project/60245f567e2d4d0015ea030b/webhook/build/publish > /dev/null
