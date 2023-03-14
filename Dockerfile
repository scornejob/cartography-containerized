FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y vim && \
    apt-get install -y python3 python3-pip

RUN pip install cartography

ARG uid=10001
ARG gid=10001

COPY . /var/cartography
WORKDIR /var/cartography

RUN groupadd -g ${gid} cartography && \
    useradd cartography -u ${uid} -g ${gid} -m -s  /bin/bash


USER ${uid}:${gid}

# verify that the binary at least runs
RUN cartography -h

ENTRYPOINT ["cartography"]
CMD ["-h"]

