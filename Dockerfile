FROM ubuntu:18.04

# 设置国内源，并设置语言、时区
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse" >  /etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse" >>  /etc/apt/sources.list \
    && echo "deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list \
    && apt update \
    && apt-get install -y --no-install-recommends locales language-pack-zh-hans tzdata \
    && locale-gen zh_CN.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

ENV LANG zh_CN.UTF-8  
ENV LANGUAGE zh_CN:zh  
ENV LC_ALL zh_CN.UTF-8
ENV TZ='Asia/Shanghai'
