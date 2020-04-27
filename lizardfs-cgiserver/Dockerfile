FROM ubuntu:20.04
LABEL maintainer="contact@lizardfs.org"
RUN apt-get update
RUN apt-get install -y lizardfs-cgiserv
CMD ["/usr/bin/python2", "/usr/sbin/lizardfs-cgiserver", "-v", "-P", "9425"]
