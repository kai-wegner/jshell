FROM java:9-jdk

MAINTAINER Kai Wegner - kw@o511.de - @kiwgnr

RUN apt-get update && apt-get install -y npm nodejs ssh git && \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    git clone https://github.com/krishnasrinivas/wetty && \
    cd wetty && \
    npm install && \
    apt-get purge -y npm git && apt-get clean autoclean && apt-get autoremove -y

RUN useradd -d /home/jshell -m -s /bin/bash jshell
RUN echo 'jshell:shell' | chpasswd

ADD docker-entrypoint.sh /root/
ADD bashrc /home/jshell/.bashrc
ADD motd /etc/motd

WORKDIR /home/jshell

EXPOSE 8080
ENTRYPOINT ["/root/docker-entrypoint.sh"]
