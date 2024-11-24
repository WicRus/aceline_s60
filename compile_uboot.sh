#!/bin/bash
. cfg

pushd $SDK_PATH/u-boot
    make sun8i_v3_dv8000_ov8865_defconfig
    make ${MAKEFLAGS}
popd
