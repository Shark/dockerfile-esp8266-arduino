FROM ubuntu:xenial

RUN apt-get update \
 && apt-get install -y --no-install-recommends git wget ca-certificates make python python-serial build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN set -ex \
 && git clone https://github.com/esp8266/Arduino.git /usr/local/src/esp8266-arduino \
 && cd /usr/local/src/esp8266-arduino \
 && git checkout tags/2.4.0-rc1 \
 && cd tools \
 && python get.py

RUN set -ex \
 && git clone https://github.com/plerup/makeEspArduino.git /usr/local/src/makeEspArduino \
 && cd /usr/local/src/makeEspArduino \
 && git checkout tags/4.4.2

COPY espmake /usr/local/bin

RUN adduser --disabled-password --uid 1000 --gecos '' core

USER core
ENV ESP_ROOT=/usr/local/src/esp8266-arduino
