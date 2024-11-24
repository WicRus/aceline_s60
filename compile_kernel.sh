#!/bin/bash
. cfg

function prepare {
    sed -i '2iexit 0' scripts/depmod.sh
}

function create_headers {
    local _builddir="${K_PATH}/usr/lib/modules/${K_VER}/build"

    install -Dt "${_builddir}" -m644 Makefile .config Module.symvers
    install -Dt "${_builddir}/kernel" -m644 kernel/Makefile

    mkdir "${_builddir}/.tmp_versions"

    cp -t "${_builddir}" -a include scripts

    install -Dt "${_builddir}/arch/${K_ARCH}" -m644 arch/${K_ARCH}/Makefile
    install -Dt "${_builddir}/arch/${K_ARCH}/kernel" -m644 arch/${K_ARCH}/kernel/asm-offsets.s

    cp -t "${_builddir}/arch/${K_ARCH}" -a arch/${K_ARCH}/include

    install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
    install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

    # http://bugs.archlinux.org/task/13146
    install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

    # http://bugs.archlinux.org/task/20402
    install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
    install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
    install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

    # add xfs and shmem for aufs building
    mkdir -p "${_builddir}"/{fs/xfs,mm}

    # copy in Kconfig files
    find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;

    # remove unneeded architectures
    local _arch
    for _arch in "${_builddir}"/arch/*/; do
      [[ ${_arch} == */${K_ARCH}/ ]] && continue
      rm -r "${_arch}"
    done

    # remove files already in linux-docs package
    rm -r "${_builddir}/Documentation"

    # remove now broken symlinks
    find -L "${_builddir}" -type l -printf 'Removing %P\n' -delete

    # Fix permissions
    chmod -R u=rwX,go=rX "${_builddir}"

    # strip scripts directory
    local _binary _strip
    while read -rd '' _binary; do
      case "$(file -bi "${_binary}")" in
        *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
        *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
        *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
        *) continue ;;
      esac
      /usr/bin/strip ${_strip} "${_binary}"
    done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)

    find ${K_PATH} -exec touch -d "2 hours ago" {} +
}

function build_xradio {
    pushd $SDK_PATH/xradio/
    make ${MAKEFLAGS} -C ${K_PATH}/usr/lib/modules/${K_VER}/build M=$PWD modules
    make ${MAKEFLAGS} -C ${K_PATH}/usr/lib/modules/${K_VER}/build M=$PWD INSTALL_MOD_PATH=${K_PATH}/usr modules_install
    popd
}

function build_cw1200 {
    pushd $SDK_PATH/cw1200/
    make ${MAKEFLAGS} -C ${K_PATH}/usr/lib/modules/${K_VER}/build M=$PWD modules
    make ${MAKEFLAGS} -C ${K_PATH}/usr/lib/modules/${K_VER}/build M=$PWD INSTALL_MOD_PATH=${K_PATH}/usr modules_install
    popd
}

function build_kernel {
    make olddefconfig prepare
    make ${MAKEFLAGS} zImage modules
    if [[ $? == 0 ]]; then
      K_VER=$(make kernelrelease)
      K_PATH=${BIN_PATH}/$K_VER
      mkdir -p $K_PATH
      mkdir -p $K_PATH/boot
      make modules_install INSTALL_MOD_PATH=$K_PATH/usr
      cp arch/arm/boot/zImage $K_PATH/boot/zImage
      build_xradio
      # build_cw1200
      rm "${K_PATH}"/usr/lib/modules/${K_VER}/build # {source,build}
      depmod -b "${K_PATH}/usr" -F System.map "${K_VER}"
      # create_headers
      rm ${KCUR_PATH}
      ln -s ${K_PATH} ${KCUR_PATH}
    fi
}

pushd $SDK_PATH/linux
  if [[ $1 == "" ]]; then
      echo "No arg, build current"
      build_kernel
  elif [[ $1 == "ML" ]]; then
      echo "Mainline, get master and build"
      git reset --hard master
      git clean -df
      prepare
      build_kernel
  elif [[ `git tag -l $1` == $1 ]]; then
      echo "Tag valid get and build";
      git reset --hard tags/$1
      git clean -df
      prepare
      build_kernel
  else
      echo "tag [$1] invalid go away";
  fi
popd

#	if [[ "$2" -le "15" && "$2" -ge "1" && $1 == "v5.17" ]]; then
#	   wget https://www.kernel.org/pub/linux/kernel/v5.x/patch-5.17.$2.xz -P ../
#	   xz --decompress ../patch-5.17.$2.xz
#	   git apply --whitespace=nowarn ../patch-5.17.$2
#	   rm ../patch-5.17.$2
#	fi
