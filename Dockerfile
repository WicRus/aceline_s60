FROM ubuntu:24.04

ARG USER_ID=1000

RUN dpkg --add-architecture i386 \
    && apt update \
    && DEBIAN_FRONTEND=noninteractive apt -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt install -y build-essential clang flex bison g++ gawk \
    device-tree-compiler gcc-arm-linux-gnueabihf libgnutls28-dev bc kmod parted \
    qemu-kvm qemu-user-static binfmt-support libarchive-tools \
    gettext git libncurses5-dev libssl-dev \
    python3-setuptools rsync swig unzip zlib1g-dev file wget \
    python3-pyelftools python3-dev \
    adduser ca-certificates locales sudo \
    --no-install-recommends \
    && deluser --remove-home ubuntu \
    && addgroup --gid $USER_ID dgroup \
    && adduser --gecos "duser" --uid $USER_ID --ingroup dgroup --home /home/duser --disabled-password duser \
    && usermod -a -G sudo duser \
    && echo "duser ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers.d/duser \
    && rm -rf /var/lib/apt/lists/* \
    && locale-gen en_US.UTF-8 \
    && git config --global user.name "duser" \
    && git config --global user.email "duser@ddomain.docker" \
    && cp ~/.gitconfig /home/duser/ && chown -R $USER_ID:$USER_ID /home/duser
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8' TERM=screen
USER duser
