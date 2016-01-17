#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

FIRST_START_DONE="${CONTAINER_STATE_DIR}/docker-confd-first-start-done"

# container first start
if [ ! -e "$FIRST_START_DONE" ]; then

  # add bin
  ln -sf ${CONTAINER_SERVICE_DIR}/confd/assets/confd /usr/local/bin/confd

  # add config file
  ln -sf ${CONTAINER_SERVICE_DIR}/confd/assets/confd.toml /etc/confd/confd.toml

  # add template resource
  ln -sf ${CONTAINER_SERVICE_DIR}/confd/assets/conf.d/* /etc/confd/conf.d/

  # add template
  ln -sf ${CONTAINER_SERVICE_DIR}/confd/assets/templates/* /etc/confd/templates/

  # override the keepalived image config file with the confd template
  ln -sf ${CONTAINER_SERVICE_DIR}/confd/assets/templates/keepalived.tmpl ${CONTAINER_SERVICE_DIR}/keepalived/assets/keepalived.conf

  touch $FIRST_START_DONE
fi

exit 0
