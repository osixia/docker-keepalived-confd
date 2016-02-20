FROM osixia/keepalived:0.2.1
MAINTAINER Bertrand Gouny <bertrand.gouny@osixia.net>

# Add multiple process stack from baseimage
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/add-multiple-process-stack
RUN apt-get -y update \
    && /container/tool/add-multiple-process-stack \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add service directory to /container/service
ADD service /container/service

# Use baseimage install-service script
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/install-service
RUN /container/tool/install-service

# Add default env variables
# to folder 98-default to not override
# keepalived image default env files in 99-default directory
ADD environment /container/environment/98-default
