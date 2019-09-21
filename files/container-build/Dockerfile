FROM meyay/unionfs-mount:1.0.1
LABEL Description="stack folders for multienv using unionfs-fuse" Version="1.0.1"

ENV TZ="America/Costa_Rica"
ENV UNION_DIRS="//read-write=RW:/read-only=RO"

RUN apk add --no-cache bash
RUN rm -rf /tmp/*

COPY run /etc/services.d/unionfs/run
