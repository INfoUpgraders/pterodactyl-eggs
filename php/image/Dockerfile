FROM php:7.4-buster

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt-get -y install curl apt-transport-https wget git
RUN addgroup --gid 998 container
RUN useradd -r -u 999 -d /home/container -g container -m container

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./start.sh /start.sh
COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
