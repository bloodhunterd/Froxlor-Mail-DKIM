#!/bin/bash

service syslog-ng start

# Start process in foreground
opendkim -f
