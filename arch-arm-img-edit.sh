#!/bin/bash
. cfg
set -e

__get_sudo
__init_arch_img
echo "Manual mod, press Ctrl-D to exit"
chroot ${MNT_PATH}
__deinit_arch_img
