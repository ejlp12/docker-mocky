FROM ingensi/play-framework
MAINTAINER wangmuy <wangmuy@gmail.com>

RUN yum install -y git
RUN git config --global user.name mocky && git config --global user.email mocky@mocky.io
RUN cd ~ && git clone https://github.com/studiodev/Mocky.git && cp -r Mocky/* /app

