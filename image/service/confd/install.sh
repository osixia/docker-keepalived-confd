#!/bin/bash -e
# this script is run during the image build

apk update

echo "Install curl and ca-certificates"
apk add ca-certificates curl

UARCH=$(uname -m)
echo "Architecture is ${UARCH}"

case "${UARCH}" in
    
    "x86_64")
        HOST_ARCH="amd64"
    ;;
    
    "arm64" | "aarch64")
        HOST_ARCH="arm64"
    ;;
    
    *)
        echo "Architecture not supported. Exiting."
        exit 1
    ;;
esac

echo "Going to use ${HOST_ARCH} confd binaries"

echo "Download confd ..."
echo "curl -o /usr/local/bin/confd -SL https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-${HOST_ARCH}"
curl -o /usr/local/bin/confd -SL "https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-${HOST_ARCH}"

chmod +x /usr/local/bin/confd

apk del curl ca-certificates
rm -rf /var/cache/apk/*

mkdir -p /etc/confd/conf.d
mkdir -p /etc/confd/templates
