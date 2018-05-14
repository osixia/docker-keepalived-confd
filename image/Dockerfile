FROM osixia/keepalived:1.4.4
MAINTAINER Bertrand Gouny <bertrand.gouny@osixia.net>

ARG CONFD_VERSION=0.16.0

# Add multiple process stack from baseimage
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/add-multiple-process-stack
RUN apk update \ \
    && /container/tool/add-multiple-process-stack \
    && apk add \
       ca-certificates \
       curl \
    && /container/tool/add-service-available :ssl-tools \
    && curl -o /usr/local/bin/confd -SL https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 \
    && chmod +x /usr/local/bin/confd \
    && apk del \
       curl \
       ca-certificates \
    && rm -rf /var/cache/apk/*

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/install-service
RUN /container/tool/install-service

# Add default env variables
# to folder 98-default to not override
# keepalived image default env files in 99-default directory
ADD environment /container/environment/98-default
