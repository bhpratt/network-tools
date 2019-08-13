FROM alpine:latest

RUN apk add --no-cache \
    curl \
    nano \
    bash \
    vim \
    #nslookup, dig, ping, etc.
    iputils \
    mtr \
    #host
    bind-tools \
    #telnet
    busybox-extras \
