FROM ubuntu:16.04
RUN ln -fs /usr/share/zoneinfo/US/Pacific-New /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -qq update
RUN apt-get -yqq install smokeping
COPY tcpping /usr/local/bin/tcpping
RUN chmod +x /usr/local/bin/tcpping
COPY script.sh /root/script.sh
RUN chmod +x /root/script.sh
EXPOSE 80
