FROM debian:stable-slim

EXPOSE 8891

# Update sources and preinstalled packages
RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends

# Install dependencies
RUN apt-get install -y --no-install-recommends \
    unattended-upgrades

# Install OpenDKIM
RUN apt-get install -y --no-install-recommends \
    opendkim \
    opendkim-tools

COPY ./start.sh /start.sh

ENTRYPOINT ["bash", "/start.sh"]
