FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install curl

RUN curl -fLsS --retry 20 -Y 100000 -y 60 https://downloads.dcos.io/binaries/cli/linux/x86-64/dcos-1.8/dcos -o dcos && \
 mv dcos /usr/local/bin && \
 chmod +x /usr/local/bin/dcos && \ 
 dcos config set core.dcos_url http://localhost && \
 dcos

ENTRYPOINT /bin/bash
