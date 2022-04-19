FROM alpine:latest 
RUN apk update && apk upgrade
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing boinc tzdata
User root
EXPOSE 80 443 31416
WORKDIR /var/lib/boinc
ENTRYPOINT ["/usr/bin/boinc", "--attach_project"]
CMD ["https://universeathome.pl/universe/", "235045_c8ee137c68e0bdbd2d441409afa97edc"]
