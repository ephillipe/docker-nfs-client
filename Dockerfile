FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get install -y nfs-common inotify-tools portmap cachefilesd -qq && echo "RUN=yes" >> /etc/default/cachefilesd
ADD nfs-client.sh /usr/local/bin/nfs-client
ENTRYPOINT ["/usr/local/bin/nfs-client"]

