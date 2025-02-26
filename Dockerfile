FROM alpine:latest

LABEL maintainer="bakerpratt"

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
    bash \
    bash-doc \
    #host
    bind-tools \
    #telnet
    busybox-extras \
    curl \
    curl-doc \
    grep \
    #ss (replacement for netstat)
    iproute2 \
    #nslookup, dig, ping, etc.
    iputils \
    mandoc \
    man-pages \
    mtr \
    nano \
    openssl \
    tcpdump \
    vim \