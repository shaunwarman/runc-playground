FROM ubuntu:xenial

Maintainer Shaun Warman<shaunwarman1@gmail.com>

RUN apt-get update \
    && apt-get install -y \
    git \
    make \
    golang-go \
    && export PATH=$PATH:/usr/local/go/bin \
    && cd /usr/lib/go/src \
    && mkdir -p github.com/opencontainers \
    && cd github.com/opencontainers \
    && git clone https://github.com/opencontainers/runc \
    && export GOPATH=/usr/lib/go \
    && cd runc \
    && make BUILDTAGS="" && make install \
    && runc

CMD sleep infinity
