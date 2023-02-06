FROM ubuntu:22.04 

ADD openjdk-8.tar.xz /usr/local/

# 配置软件源及安装常用工具(可选)
# https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/
RUN sed -i "s@http://.*archive.ubuntu.com@http://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list && \
    sed -i "s@http://.*security.ubuntu.com@http://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list && \
    apt update && apt install -y bind9-dnsutils curl iputils-ping && apt clean

ENV JAVA_HOME=/usr/local/openjdk-8 \
    JAVA_VERSION=8u312 \
    PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
