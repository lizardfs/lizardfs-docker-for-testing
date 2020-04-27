FROM ubuntu:20.04
LABEL maintainer="contact@lizardfs.org"
RUN apt-get update
RUN apt-get install -y lizardfs-master rsyslog
COPY lizardfs-master.start.sh lizardfs-master.start.sh
CMD ["./lizardfs-master.start.sh"]
