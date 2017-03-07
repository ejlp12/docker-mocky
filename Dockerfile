FROM ifinavet/playframework
MAINTAINER wangmuy <wangmuy@gmail.com>

RUN apt-get install -y git
RUN git config --global user.name mocky && git config --global user.email mocky@mocky.io
RUN cd ~ && git clone https://github.com/studiodev/Mocky.git && cp -r Mocky/* /app
RUN cd /app && play dist
