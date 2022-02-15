FROM debian:stable-slim

WORKDIR /workspaces/atc

COPY files/init.sh /files/

RUN chmod +x /files/init.sh
RUN bash /files/init.sh
RUN addgroup atc && useradd solver -g atc
RUN su solver

COPY ./problems /workspaces/atc

