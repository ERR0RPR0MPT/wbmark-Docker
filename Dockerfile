FROM debian:latest
WORKDIR /app
USER root

COPY wbctl ./
COPY wbmark ./

RUN chmod a+x -R /app

CMD wbctl https://dspace1.fuckgyz.eu.org
