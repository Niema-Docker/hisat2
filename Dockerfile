# Minimal Docker image for HISAT2 v2.2.1 using Alpine base
FROM alpine:latest
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install HISAT2
RUN apk update && \
    apk add bash make && \
    wget -qO- "https://github.com/DaehwanKimLab/hisat2/archive/refs/tags/v2.2.1.tar.gz" | tar -zx && \
    cd hisat2-* && \
    # TODO MAKE DOESN'T SEEM TO WORK IN ALPINE
    cd .. && \
    rm -rf hisat2-*
