FROM docker.io/armhf-ubuntu:16.04

ENV QEMU_EXECVE 1

ADD https://github.com/multiarch/qemu-user-static/releases/download/v2.8.1/qemu-arm-static /usr/bin
COPY arm-xbuild /usr/bin

RUN [ "qemu-arm-static", "/bin/sh", "-c", "ln -s arm-xbuild /usr/bin/cross-build-start; ln -s arm-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real" ]