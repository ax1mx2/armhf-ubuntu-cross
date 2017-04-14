FROM docker.io/armv7/armhf-ubuntu:16.04

ENV QEMU_EXECVE 1

COPY . /usr/bin

RUN [ "qemu-arm-static", "/bin/sh", "-c", "ln -s arm-xbuild /usr/bin/cross-build-start; ln -s arm-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real" ]