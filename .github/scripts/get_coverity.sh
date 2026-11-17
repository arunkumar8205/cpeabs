#!/bin/bash
# Copyright 2021 Comcast Cable Communications Management, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

# Usage: get_coverity.sh token GITHUB_REPOSITORY

token=$1
project=${2//\//\%2F}

if [ ! -f coverity_tool.tgz ]; then
    echo "Fetching linux64 binary coverity_tool.tgz"
    wget https://scan.coverity.com/download/linux64 \
        -q --post-data "token=$token&project=$project" -O coverity_tool.tgz
fi

if [ ! -f coverity_tool.md5 ]; then
    echo "Fetching linux64 md5"
    wget https://scan.coverity.com/download/linux64 \
        -q --post-data "token=$token&project=$project&md5=1" -O coverity_tool.md5
    echo "  coverity_tool.tgz" >> coverity_tool.md5
fi

md5sum -c coverity_tool.md5

tar -xzf coverity_tool.tgz

find . -name cov-* -exec ln -s {} coverity \;
