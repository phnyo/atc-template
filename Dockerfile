FROM debian:stable-slim

RUN adduser --system solver --group

WORKDIR /home/atc
COPY files/init.sh /files/
RUN apt update && \
    apt install -y curl vim python3 python3-pip --no-install-recommends
RUN chmod +x /files/init.sh
RUN bash /files/init.sh
#USER solver

CMD ["bash"]

