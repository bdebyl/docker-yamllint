FROM alpine:latest
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

RUN apk add -U \
    gcc \
    git \
    libffi-dev \
    musl-dev \
    openssl-dev \
    py3-pip \
    python3 \
    python3-dev \
    && rm -rf /var/cache/apk/*

ADD requirements.txt /tmp/requirements.txt
RUN pip --no-cache-dir install -r /tmp/requirements.txt && \
    rm /tmp/requirements.txt

WORKDIR /src

