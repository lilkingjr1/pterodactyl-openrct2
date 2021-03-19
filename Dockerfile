FROM openrct2/openrct2-cli:develop

USER root

RUN adduser --quiet --home /home/container container
RUN apt-get install --no-install-recommends -y python3

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT /bin/bash /entrypoint.sh
