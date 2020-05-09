#!/bin/bash

service syslog-ng start

# Start process in foreground and listen on all interfaces
opendkim -f -p inet:8891
