FROM alpine:3
LABEL maintainer="Farshad Nematdoust <farshad@nematdoust.com>"
LABEL source="https://github.com/ph4r5h4d/aria2-docker"
ARG USER=aria

RUN apk add --no-cache --update --verbose aria2 && \
    rm -rf /var/cache/apk /tmp /sbin/halt /sbin/poweroff /sbin/reboot

WORKDIR /.aria2
COPY aria2/aria2.conf .

EXPOSE 6800

ENTRYPOINT [ "aria2c", "--conf-path=/.aria2/aria2.conf" ]