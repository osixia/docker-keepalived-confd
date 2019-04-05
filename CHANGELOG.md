# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project follows osixia/docker-keepalived-confd baseimage versioning.

## [2.0.15] - 2019-04-05
### Changed
  - Upgrade baseimage to keepalived:2.0.15

## [2.0.13] - 2019-02-27
### Changed
  - Upgrade baseimage to keepalived:2.0.13

## [2.0.12] - 2019-01-30
### Changed
  - Upgrade baseimage to keepalived:2.0.12

## [2.0.11] - 2019-01-21
### Changed
  - Upgrade baseimage to keepalived:2.0.11

## [2.0.10] - 2018-11-13
### Changed
  - Upgrade baseimage to keepalived:2.0.10
  - garp_lower_priority_repeat changed to garp_lower_prio_repeat in keepalived.tmpl

### Removed 
  - track_interface in keepalived.conf

## [1.4.5] - 2018-06-02
### Changed
  - Upgrade baseimage to keepalived:1.4.5

## [1.4.4] - 2018-05-14
### Changed
  - Upgrade Confd version to v0.16.0
  - Upgrade baseimage to keepalived:1.4.4

## [1.4.2] - 2018-03-06
### Changed
  - Upgrade baseimage to keepalived:1.4.2

## [1.4.1] - 2018-01-29
### Changed
  - Upgrade Confd version to v0.15.0
  - Upgrade baseimage to keepalived:1.4.1

## [1.4.0] - 2018-01-18
### Changed
  - Upgrade baseimage to keepalived:1.4.0

## [1.3.9] - 2017-10-22
### Changed
  - Upgrade baseimage to keepalived:1.3.9

## [1.3.8] - 2017-10-16
### Changed
  - Upgrade Confd version to v0.14.0
  - Upgrade baseimage to keepalived:1.3.8

## [1.3.6-2] - 2017-10-16
### Added
  - Make it compataible with kubernetes etcdv3 + json

### Changed
  - Upgrade baseimage to keepalived:1.3.6-1

## [1.3.6-1] - 2017-09-07
### Changed
  - Upgrade Confd version to v0.13.0

## [1.3.6] - 2017-08-15
### Changed
  - Upgrade baseimage to keepalived:1.3.6
  - Upgrade Confd version to v0.12.0

## [1.3.5-1] - 2017-07-19
### Changed
  - Upgrade baseimage to keepalived:1.3.5-1

## [1.3.5] - 2017-04-02
### Changed
  - Upgrade baseimage to keepalived:1.3.5
  - RIP fleet, the base config now takes its peers from kubernetes

## [1.3.4] - 2017-02-19
### Changed
  - Upgrade baseimage to keepalived:1.3.4

## [1.3.3] - 2017-02-15
### Changed
  - Upgrade baseimage to keepalived:1.3.3

## [1.3.2] - 2016-11-29
### Changed
  - Upgrade baseimage to keepalived:1.3.2

## [1.3.1] - 2016-11-22
### Changed
  - Upgrade baseimage to keepalived:1.3.1

## [1.3.0] - 2016-11-21
### Changed
  - Upgrade baseimage to keepalived:1.3.0

## [1.2.24] - 2016-09-13
### Changed
  - Upgrade baseimage to keepalived:1.2.24

## Versions before following the osixia/docker-keepalived-confd baseimage versioning

## [0.1.3] - 2016-09-02
### Changed
  - Upgrade baseimage to keepalived:0.2.3
  - Upgrade Confd version to v0.12.0-alpha3

## [0.1.2] - 2016-07-26
### Changed
  - Upgrade baseimage to keepalived:0.2.2

## [0.1.1] - 2016-02-20
### Changed
  - Upgrade baseimage to keepalived:0.2.1

## 0.1.0 - 2016-01-27
Initial release

[2.0.15]: https://github.com/osixia/docker-keepalived-confd/compare/v2.0.13...v2.0.15
[2.0.13]: https://github.com/osixia/docker-keepalived-confd/compare/v2.0.12...v2.0.13
[2.0.12]: https://github.com/osixia/docker-keepalived-confd/compare/v2.0.11...v2.0.12
[2.0.11]: https://github.com/osixia/docker-keepalived-confd/compare/v2.0.10...v2.0.11
[2.0.10]: https://github.com/osixia/docker-keepalived-confd/compare/v1.4.5...v2.0.10
[1.4.5]: https://github.com/osixia/docker-keepalived-confd/compare/v1.4.4...v1.4.5
[1.4.4]: https://github.com/osixia/docker-keepalived-confd/compare/v1.4.2...v1.4.4
[1.4.2]: https://github.com/osixia/docker-keepalived-confd/compare/v1.4.1...v1.4.2
[1.4.1]: https://github.com/osixia/docker-keepalived-confd/compare/v1.4.0...v1.4.1
[1.4.0]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.9...v1.4.0
[1.3.9]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.8...v1.3.9
[1.3.8]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.6-2...v1.3.8
[1.3.6-2]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.6-1...v1.3.6-2
[1.3.6-1]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.6...v1.3.6-1
[1.3.6]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.5-1...v1.3.6
[1.3.5-1]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.5...v1.3.5-1
[1.3.5]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.4...v1.3.5
[1.3.4]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.3...v1.3.4
[1.3.3]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.2...v1.3.3
[1.3.2]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/osixia/docker-keepalived-confd/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/osixia/docker-keepalived-confd/compare/v1.2.24...v1.3.0
[1.2.24]: https://github.com/osixia/docker-keepalived-confd/compare/v0.1.3...v1.2.24
[0.1.3]: https://github.com/osixia/docker-keepalived-confd/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/osixia/docker-keepalived-confd/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/osixia/docker-keepalived-confd/compare/v0.1.0...v0.1.1
