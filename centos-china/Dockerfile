FROM centos:7.5.1804

RUN yum install -y  kde-l10n-Chinese tzdata \
    && yum clean all \
    && rm -rf /tmp/* \
    && rm -rf /var/cache/yum/* \
    && localedef -c -f UTF-8 -i zh_CN zh_CN.UTF-8

ENV LANG zh_CN.UTF-8  
ENV LANGUAGE zh_CN:zh  
ENV LC_ALL zh_CN.UTF-8
ENV TZ='Asia/Shanghai'
