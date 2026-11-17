# cpeabs

An abstraction layer for consumer preference equipment systems.
[![Build Status](https://github.com/rdkcentral/cpeabs/workflows/CI/badge.svg)](https://github.com/rdkcentral/cpeabs/actions)
[![codecov.io](https://codecov.io/gh/xmidt-org/cpeabs/branch/main/graph/badge.svg?token=D267HYdfCD)](https://codecov.io/gh/xmidt-org/cpeabs)
[![coverity](https://img.shields.io/coverity/scan/23416.svg)](https://scan.coverity.com/projects/xmidt-org-cpeabs)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=xmidt-org_cpeabs&metric=alert_status)](https://sonarcloud.io/dashboard?id=xmidt-org_cpeabs)
[![Language Grade: C/C++](https://img.shields.io/lgtm/grade/cpp/g/xmidt-org/cpeabs.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/xmidt-org/cpeabs/context:cpp)
[![GitHub release](https://img.shields.io/github/release/rdkcentral/cpeabs.svg)](CHANGELOG.md)
## Add more information here.

# Building and Testing Instructions

```
Use CFLAG -DPLATFORM=DEVICE_GATEWAY to build for RDKB platform
Use CFLAG -DPLATFORM=DEVICE_VIDEO to build for RDKV platform
Use CFLAG -DPLATFORM=DEVICE_EXTENDER to build for POD platform

mkdir build
cd build
cmake ..
make
make test
```

