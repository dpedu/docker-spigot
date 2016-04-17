# docker-spigot

**A setup for spigot within docker.**

Currently minecraft 1.9.2.

## Quick start

* Clone: `git clone ssh://git@gitlab.davepedu.com:222/dave/docker-spigot.git`
* Build: `cd docker-nexus ; docker build -t spigot .`
* Run: `docker run nexus`


## Persistence

Mount `/srv/spigot/` to the host. This dir should be owned by UID 1000:

* `-v /host/path/data/:/srv/spigot/`

## Protips

* Memory limit: `-e MEMLIMIT=512m`. Defaults to 1024m.
