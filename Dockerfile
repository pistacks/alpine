FROM scratch
ARG VERSION
ENV VERSION $VERSION
ADD alpine-minirootfs-$VERSION-armv7.tar.gz /
