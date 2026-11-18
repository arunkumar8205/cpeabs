# cpeabs

An abstraction layer for consumer preference equipment systems.
[![Build Status](https://github.com/rdkcentral/cpeabs/workflows/CI/badge.svg)](https://github.com/rdkcentral/cpeabs/actions)
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

