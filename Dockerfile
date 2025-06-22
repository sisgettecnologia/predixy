FROM alpine:3.18

RUN apk add --no-cache g++ make git && \
    git clone --depth=1 https://github.com/joyieldInc/predixy /opt/predixy && \
    cd /opt/predixy && make

WORKDIR /opt/predixy
ENTRYPOINT ["./predixy", "/etc/predixy.conf"]