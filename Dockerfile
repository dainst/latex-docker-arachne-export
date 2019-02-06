FROM debian:buster

MAINTAINER Deutsches Archaeologisches Institut "dev@dainst.de"

RUN apt-get update && \
    apt-get -y install \
    build-essential \
    texlive \
    texlive-full \
    texlive-lang-all \
    texlive-luatex

RUN apt-get update && \
    apt-get -y install \
    wget \
    rsync

ENV LIBRARY_PATH=/lib:/usr/lib
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

COPY latex-dainst-bundle /latex-dainst-bundle
RUN mkdir /files

RUN cd /latex-dainst-bundle/dainst-bundle \
    && make cleanbundle \
    && make \
    && make install \
    && ls -l

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["entrypoint.sh"]