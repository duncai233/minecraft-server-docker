FROM ubuntu:latest
LABEL maintainer="duncai https://github.com/duncai233/minecraft-server-docker"
RUN apt-get update && apt-get install -y wget tar unzip libltdl7 && \
    mkdir -p /workspace /jdk && \
    wget https://cdn.azul.com/zulu/bin/zulu21.36.17-ca-jdk21.0.4-linux_x64.tar.gz && \
    wget https://cdn.azul.com/zulu/bin/zulu17.52.17-ca-jdk17.0.12-linux_x64.tar.gz && \
    wget https://cdn.azul.com/zulu/bin/zulu11.74.15-ca-jdk11.0.24-linux_x64.tar.gz && \
    wget https://cdn.azul.com/zulu/bin/zulu8.80.0.17-ca-jdk8.0.422-linux_x64.tar.gz && \
    tar -zxvf zulu21.36.17-ca-jdk21.0.4-linux_x64.tar.gz -C /jdk && \
    tar -zxvf zulu17.52.17-ca-jdk17.0.12-linux_x64.tar.gz -C /jdk && \
    tar -zxvf zulu11.74.15-ca-jdk11.0.24-linux_x64.tar.gz -C /jdk && \
    tar -zxvf zulu8.80.0.17-ca-jdk8.0.422-linux_x64.tar.gz -C /jdk && \
    rm -f ./*linux_x64.tar.gz && \
    ln -s /jdk/zulu21.36.17-ca-jdk21.0.4-linux_x64/bin/java /usr/bin/jdk21 && \
    ln -s /jdk/zulu17.52.17-ca-jdk17.0.12-linux_x64/bin/java /usr/bin/jdk17 && \
    ln -s /jdk/zulu11.74.15-ca-jdk11.0.24-linux_x64/bin/java /usr/bin/jdk11 && \
    ln -s /jdk/zulu8.80.0.17-ca-jdk8.0.422-linux_x64/bin/java /usr/bin/jdk8
WORKDIR /workspace