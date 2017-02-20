FROM ubuntu:trusty

RUN useradd --uid 1000 mcserver && \
   apt-get update && \
    apt-get install -y openjdk-7-jre-headless supervisor && \
    mkdir -p /srv/spigot/ /srv/spigot-default/ && \
    chown -R mcserver:mcserver /srv/spigot/

ENV MEMLIMIT=1024m

ADD copyjars.sh /usr/local/bin/
ADD spigot-1.11.2.jar /srv/spigot-default/spigot.jar
ADD eula.txt /srv/spigot-default/
ADD supervisor.conf /etc/supervisor/conf.d/
ADD spigot.conf /etc/supervisor/conf.d/

ENTRYPOINT ["supervisord"]
