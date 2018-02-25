FROM alpine:3.6
MAINTAINER Vince Tse <vincetse@users.noreply.github.com>

RUN \
  apk update && \
  apk upgrade && \
  apk add --no-cache \
    tini \
  && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini", "--"]
