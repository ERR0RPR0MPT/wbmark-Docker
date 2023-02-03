FROM debian:latest
WORKDIR /app
USER root

COPY wbctl ./
COPY wbmark ./

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends ca-certificates curl \
    && chmod a+x -R /app

CMD /app/wbctl https://dspace1.fuckgyz.eu.org
