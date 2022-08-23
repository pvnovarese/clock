FROM busybox:latest
MAINTAINER Paul Novarese pvn@novarese.net
LABEL maintainer="pvn@novarese.net"
LABEL name="clock"
LABEL org.opencontainers.image.title="clock"
LABEL org.opencontainers.image.description="Simple counter/beacon. outputs date(1) once per second.  A smaller version of jpetazzo/clock"
HEALTHCHECK --timeout=10s CMD /bin/date || exit 1 

RUN echo -e  '#!/bin/sh \n\
if [ $# -eq 0 ] \n\
  then \n\
    INTERVAL=1 \n\
  else \n\
    INTERVAL=$1 \n\
fi \n\
while : \n\
 do \n\
  date \n\
  sleep ${INTERVAL} \n\
 done \n'  >>  /beacon.sh && \
 chmod 0755 /beacon.sh

## just to make sure we have a unique build each time 
RUN date > /image_build_timestamp

#test comment 2
USER 65534:65534
#OLD beacon was just a simple one-liner:
#ENTRYPOINT while : \ ; do date; sleep 1; done
CMD ["1"]
ENTRYPOINT ["/beacon.sh"]
