FROM boinc/client:base-ubuntu

LABEL maintainer="BOINC" \
      description="VirtualBox-savvy BOINC client."

# Install
RUN apt-get update && apt-get install -y --no-install-recommends \
# Install VirtualBox
    virtualbox && \
# Cleaning up
    rm -rf /var/lib/apt/lists/*
EXPOSE 80 443 31416
WORKDIR /var/lib/boinc
ENTRYPOINT ["/usr/bin/boinc", "--attach_project"]
CMD ["https://universeathome.pl/universe/", "235045_c8ee137c68e0bdbd2d441409afa97edc"]
