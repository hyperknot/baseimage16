FROM ubuntu:18.04
MAINTAINER Zsolt Ero <zsolt@hyperknot.comm>

COPY . /bd_build

RUN /bd_build/prepare.sh && \
	/bd_build/system_services.sh && \
	/bd_build/utilities.sh && \
	/bd_build/cleanup.sh && \
    touch /etc/service/cron/down

WORKDIR /

ENV DEBIAN_FRONTEND="teletype" \
    LANGUAGE="en_US:en" \
    LANG="en_US.UTF-8" \
    LC_CTYPE="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    PYTHONIOENCODING="UTF-8" \
    HOME /root

CMD ["/sbin/my_init"]
