FROM alpine:latest

MAINTAINER Baker Pratt

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
    bash \
    bash-doc \
    bind-tools \
    #telnet
    busybox-extras \
    curl \
    curl-doc \
    grep \
    #nslookup, dig, ping, etc.
    iputils \
    #host
    man \
    man-pages \
    mtr \
    nano \
    openssl \
    vim \
