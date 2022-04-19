FROM boinc/client:base-alpine
EXPOSE 80 443 31416
WORKDIR /var/lib/boinc
ENTRYPOINT ["/usr/bin/boinc", "--attach_project"]
CMD ["https://universeathome.pl/universe/", "235045_c8ee137c68e0bdbd2d441409afa97edc"]
