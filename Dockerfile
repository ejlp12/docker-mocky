FROM java:7
MAINTAINER wangmuy <wangmuy@gmail.com>

ENV PLAY_VERSION 2.2.0

RUN wget -q https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip \
    && unzip -q play-${PLAY_VERSION}.zip \
    && rm play-${PLAY_VERSION}.zip \
&& ln -s /play-${PLAY_VERSION}/play /usr/local/bin/

RUN apt-get install -y git
RUN git config --global user.name mocky && git config --global user.email mocky@mocky.io
RUN cd ~ && git clone https://github.com/studiodev/Mocky.git && mv Mocky /app
RUN cd /app && play dist
