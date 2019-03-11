ARG BASE_IMAGE=alpine:3.9
FROM ${BASE_IMAGE}

ENV REFRESHED_AT=2019-03-09

LABEL Name="senzing/template" \
      Version="1.0.0"

# Alpine package repository: https://pkgs.alpinelinux.org/packages

RUN apk --update add \
    tree \
 && rm -rf /var/cache/apk/*

# Copy files from repository.

COPY ./rootfs /

# Runtime execution.

CMD ["/bin/ash"]