FROM debian:stable-slim

# ===================================================
# Ports
# ===================================================

EXPOSE 8891

# ===================================================
# Base packages
# ===================================================

RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends

RUN apt-get install -y --no-install-recommends \
    ca-certificates \
    syslog-ng \
    unattended-upgrades

# ===================================================
# OpenDKIM
# ===================================================

RUN apt-get install -y --no-install-recommends \
    opendkim \
    opendkim-tools \
    openssl

# ===================================================
# Filesystem
# ===================================================

COPY ./src/ /

# ===================================================
# Entrypoint
# ===================================================

ENTRYPOINT ["bash", "/start.sh"]
