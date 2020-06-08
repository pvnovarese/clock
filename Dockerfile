FROM busybox:latest
MAINTAINER Paul Novarese pvn@novarese.net
LABEL maintainer="pvn@novarese.net"
HEALTHCHECK --timeout=10s CMD /bin/date || exit 1
USER 65534:65534
ENTRYPOINT while : \ ; do date; sleep 1; done
