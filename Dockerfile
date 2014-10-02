FROM debian:jessie
MAINTAINER SequenceIQ

USER root

# install dev tools
RUN apt-get update
RUN apt-get install -y curl tar sudo openssh-server rsync
RUN curl -o /usr/bin/jq http://stedolan.github.io/jq/download/linux64/jq && chmod +x /usr/bin/jq

# java
RUN mkdir -p /usr/java/default && \
    curl -Ls 'http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie' | \
    tar --strip-components=1 -xz -C /usr/java/default/
ENV JAVA_HOME /usr/java/default/
ENV PATH $PATH:$JAVA_HOME/bin

# maven
RUN curl http://www.eu.apache.org/dist/maven/maven-3/3.2.1/binaries/apache-maven-3.2.1-bin.tar.gz|tar xz  -C /usr/share
ENV M2_HOME /usr/share/apache-maven-3.2.1
ENV PATH $PATH:$M2_HOME/bin

CMD ["bash"]
