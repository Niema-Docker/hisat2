# Minimal Docker image for HISAT2 using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install HISAT2
RUN apk update && \
    apk add bash g++ make perl && \
    wget -qO- "https://github.com/DaehwanKimLab/hisat2/archive/refs/tags/v2.2.1.tar.gz" | tar -zx && \
    cd hisat2-* && \
    make && \
    mv hisat2 hisat2-* hisat2_*.py /usr/local/bin/ && \
    cd .. && \
    rm -rf hisat2-*
