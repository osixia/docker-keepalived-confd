# osixia/keepalived-confd

[![Docker Pulls](https://img.shields.io/docker/pulls/osixia/keepalived-confd.svg)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/osixia/keepalived-confd.svg)][hub]
[![Image Size](https://img.shields.io/imagelayers/image-size/osixia/keepalived-confd/latest.svg)](https://imagelayers.io/?images=osixia/keepalived-confd:latest)
[![Image Layers](https://img.shields.io/imagelayers/layers/osixia/keepalived-confd/latest.svg)](https://imagelayers.io/?images=osixia/keepalived-confd:latest)

[hub]: https://hub.docker.com/r/osixia/keepalived-confd/

Latest release: 0.1.2 - [Changelog](CHANGELOG.md) | [Docker Hub](https://hub.docker.com/r/osixia/keepalived-confd/) 

A docker image to run Keepalived that get unicast peers from etcd thanks to confd.

The keepalived.tmpl example also get metatada from fleet to know if the node belong to unicast peers.

> [keepalived.org](http://keepalived.org/) /  [confd](https://github.com/kelseyhightower/confd) / [fleet](https://github.com/coreos/fleet)

/!\ this documentation is a work in progress.

## Under the hood: osixia/keepalived

This image is based on osixia/keepalived.
More info: https://github.com/osixia/docker-keepalived
