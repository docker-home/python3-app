# python3-app
python3 app base image

```
FROM python:3.6.6
MAINTAINER wuyue92tree@163.com

WORKDIR /data/src

ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com \
	&& pip install git+https://github.com/Supervisor/supervisor.git \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD supervisor.conf /etc/supervisor/supervisor.conf

EXPOSE 9001

CMD supervisord -nc /etc/supervisor/supervisor.conf
```
