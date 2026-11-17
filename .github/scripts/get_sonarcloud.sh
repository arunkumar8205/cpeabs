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

curl -s -L -O https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip
unzip -q -o build-wrapper-linux-x86.zip


SONAR_VERSION=`curl -s https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/ |grep -o "sonar-scanner-cli-[0-9.]*-linux.zip"|sort -r|uniq|head -n 1`
curl -s -L -O https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/$SONAR_VERSION
curl -s -L -O https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/$SONAR_VERSION.sha256
echo "  $SONAR_VERSION" >> $SONAR_VERSION.sha256
sha256sum -c $SONAR_VERSION.sha256
if [[ $? -ne 0 ]]
then
    exit 1
fi
unzip -q $SONAR_VERSION

output=`ls | grep -o "sonar-scanner-[0-9.]*-linux"`

echo "Using $output"

mv $output sonar-scanner
