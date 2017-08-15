#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

# this startup script is run after confd/startup.sh and keepalived/startup.sh

# copy back ${CONTAINER_SERVICE_DIR}/keepalived/assets/keepalived.conf  to
# template after keepalived startup script made variables replacements
cp ${CONTAINER_SERVICE_DIR}/keepalived/assets/keepalived.conf ${CONTAINER_SERVICE_DIR}/confd/assets/templates/keepalived.tmpl

# remove keepalived link to keepalived config file
rm /usr/local/etc/keepalived/keepalived.conf

exit 0
