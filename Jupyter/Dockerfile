FROM python:3.7.2-alpine3.9

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --no-cache bash expect gcc musl-dev zeromq-dev \
    && mkdir -p ~/.pip \
    && echo '[global]' > ~/.pip/pip.conf \
    && echo 'index-url = https://pypi.tuna.tsinghua.edu.cn/simple' >> ~/.pip/pip.conf \
    && pip install jupyter 

EXPOSE 8888

CMD jupyter-notebook --ip 0.0.0.0 --port 8888 --allow-root --no-browser
