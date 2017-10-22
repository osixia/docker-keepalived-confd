# osixia/keepalived-confd

[![Docker Pulls](https://img.shields.io/docker/pulls/osixia/keepalived-confd.svg)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/osixia/keepalived-confd.svg)][hub]
[![](https://images.microbadger.com/badges/image/osixia/keepalived-confd.svg)](http://microbadger.com/images/osixia/keepalived-confd "Get your own image badge on microbadger.com")

[hub]: https://hub.docker.com/r/osixia/keepalived-confd/

Latest release: 1.3.9 - [Changelog](CHANGELOG.md) | [Docker Hub](https://hub.docker.com/r/osixia/keepalived-confd/) 

**A docker image to run Keepalived that get unicast peers from any key value store (Redis, ETCD, Consul...) thanks to confd.**

The keepalived.tmpl example also get metatada from kubernetes to know if the node belong to unicast peers.

> [keepalived.org](http://keepalived.org/) /  [confd](https://github.com/kelseyhightower/confd) / [kubernetes](https://github.com/kubernetes/kubernetes)

/!\ this documentation is a work in progress.

## Under the hood: osixia/keepalived

This image is based on osixia/keepalived.
More info: https://github.com/osixia/docker-keepalived
