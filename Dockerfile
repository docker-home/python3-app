FROM python:3.7.4
MAINTAINER wuyue92tree@163.com

WORKDIR /data/src

ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com \
    && pip install supervisor==4.1.0 \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD supervisor.conf /etc/supervisor/supervisor.conf

EXPOSE 9001

CMD supervisord -nc /etc/supervisor/supervisor.conf
