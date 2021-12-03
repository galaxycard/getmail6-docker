FROM python:3-alpine

ARG GETMAIL_RELEASE="6.18.5"
ENV GETMAIL_RELEASE ${GETMAIL_RELEASE}

RUN wget -O getmail6.tar.gz "https://github.com/getmail6/getmail6/archive/refs/tags/v${GETMAIL_RELEASE}.tar.gz" && \
  tar -zxvf getmail6.tar.gz && \
  cd getmail6-${GETMAIL_RELEASE} && \
  python setup.py install && \
  cd .. && rm -rf getmail*