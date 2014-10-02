FROM debian:jessie
MAINTAINER SequenceIQ

USER root

# install dev tools
RUN apt-get update
RUN apt-get install -y curl tar sudo openssh-server rsync
RUN curl -o /usr/bin/jq http://stedolan.github.io/jq/download/linux64/jq && chmod +x /usr/bin/jq

CMD ["bash"]
