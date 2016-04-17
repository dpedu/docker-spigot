#!/bin/bash
test ! -f /srv/spigot/spigot.jar && mv /srv/spigot-default/spigot.jar /srv/spigot/
test ! -f /srv/spigot/eula.txt && mv /srv/spigot-default/eula.txt /srv/spigot/
