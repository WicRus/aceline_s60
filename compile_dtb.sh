#!/bin/bash
. cfg
set -e

pushd $SDK_PATH/linux
    cpp -nostdinc -I include -I arch -undef -x assembler-with-cpp arch/arm/boot/dts/allwinner/sun8i-v3-dv8000-ov8865.dts $BIN_PATH/t.dts
    dtc -I dts -O dtb $BIN_PATH/t.dts -o $BIN_PATH/sun8i-v3-dv8000-ov8865.dtb
    rm $BIN_PATH/t.dts
popd