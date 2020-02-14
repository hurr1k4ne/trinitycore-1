FROM phusion/baseimage:0.10.1

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt -y update && apt -y install mydumper

#WORKDIR /

#COPY backup_sql.sh /backup_sql.sh
#RUN chmod +x /backup_sql.sh

#ENTRYPOINT ["/backup_sql.sh"]

USER 1000

WORKDIR /opt/mydumper/$( date +%Y-%m-%d_%H-%M-%S )

ENTRYPOINT ["/usr/bin/mydumper","--host=mysql","--password=okgreat","--outputdir=./","--rows=50000","--compress","--threads=2","--compress-protocol"]

USER root
#clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


