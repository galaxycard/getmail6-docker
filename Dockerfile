FROM python:3-slim

ARG GETMAIL_RELEASE="6.18.5"
ENV GETMAIL_RELEASE ${GETMAIL_RELEASE}

ARG FOLDER="support"
ENV FOLDER ${FOLDER}

ENTRYPOINT [ "/entrypoint.sh" ]

RUN apt-get update && apt-get install curl -y --no-install-recommends && \
  curl -sSL -o getmail6.tar.gz "https://github.com/getmail6/getmail6/archive/refs/tags/v${GETMAIL_RELEASE}.tar.gz" && \
  tar -zxvf getmail6.tar.gz && \
  cd getmail6-${GETMAIL_RELEASE} && \
  python setup.py install && \
  cd .. && rm -rf getmail* && \
  rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh