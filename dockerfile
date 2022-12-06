FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/ikadix/static_ssh

RUN apt update && apt install  openssh-server sudo rsync -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

RUN  echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22

COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]