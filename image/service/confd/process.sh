#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

# get nodes from env var
NODES=""
for node in $(complex-bash-env iterate KEEPALIVED_CONFD_NODES)
do
  NODES="$NODES -node ${!node}"
done

# client certs
KEEPALIVED_CONFD_CLIENT_CAKEYS=""
if [ -n "${KEEPALIVED_CONFD_CLIENT_CAKEYS_FILENAME}" ]; then
  KEEPALIVED_CONFD_CLIENT_CAKEYS="-client-ca-keys ${CONTAINER_SERVICE_DIR}/confd/assets/certs/$KEEPALIVED_CONFD_CLIENT_CAKEYS_FILENAME"
fi

KEEPALIVED_CONFD_CLIENT_CERT=""
if [ -n "${KEEPALIVED_CONFD_CLIENT_CERT_FILENAME}" ]; then
  KEEPALIVED_CONFD_CLIENT_CERT="-client-cert ${CONTAINER_SERVICE_DIR}/confd/assets/certs/$KEEPALIVED_CONFD_CLIENT_CERT_FILENAME"
fi

KEEPALIVED_CONFD_CLIENT_KEY=""
if [ -n "${KEEPALIVED_CONFD_CLIENT_KEY_FILENAME}" ]; then
  KEEPALIVED_CONFD_CLIENT_KEY="-client-key ${CONTAINER_SERVICE_DIR}/confd/assets/certs/$KEEPALIVED_CONFD_CLIENT_KEY_FILENAME"

  chmod 600 ${CONTAINER_SERVICE_DIR}/etcd/assets/certs/$KEEPALIVED_CONFD_CLIENT_KEY_FILENAME
fi

exec confd $NODES $KEEPALIVED_CONFD_CLIENT_CAKEYS $KEEPALIVED_CONFD_CLIENT_CERT $KEEPALIVED_CONFD_CLIENT_KEY $KEEPALIVED_CONFD_CMD_ARGS
