#!/bin/bash
./docker_bash.sh -c "
./compile_uboot.sh
./compile_kernel.sh
./compile_dtb.sh
./arch-arm-img-create.sh "