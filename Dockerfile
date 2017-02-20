FROM ubuntu:trusty

ADD start /start

RUN useradd --uid 1000 mcserver && \
   apt-get update && \
    apt-get install -y openjdk-7-jre-headless && \
    mkdir -p /srv/spigot/ /srv/spigot-default/ && \
    chown -R mcserver:mcserver /srv/spigot/ && \
    chmod +x /start

ENV MEMLIMIT=1024m

ADD spigot-1.11.2.jar /srv/spigot-default/spigot.jar
ADD eula.txt /srv/spigot-default/

ENTRYPOINT ["/start"]

USER mcserver
