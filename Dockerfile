FROM java:8
MAINTAINER wangmuy <wangmuy@gmail.com>

ENV PLAY_VERSION 2.6.0

RUN wget -q https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip \
    && unzip -q play-${PLAY_VERSION}.zip \
    && rm play-${PLAY_VERSION}.zip \
&& ln -s /play-${PLAY_VERSION}/play /usr/local/bin/

RUN apt-get install -y git
RUN git config --global user.name mocky && git config --global user.email mocky@mocky.io
RUN mkdir /app && cd /app && git clone https://github.com/wangmuy/Mocky.git .
RUN cd /app && play dist

WORKDIR /app
CMD ["play","run"]
