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
ENV PIPENV_VENV_IN_PROJECT=true
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

COPY latex-dainst-bundle /latex-dainst-bundle
COPY files /files
COPY entrypoint.sh /usr/local/bin/

RUN cd /latex-dainst-bundle/dainst-bundle \
    && make getCTAN \
    && make \
    && make install

ENTRYPOINT ["entrypoint.sh"]