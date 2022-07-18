# python3-app
## usage

### default
```
docker build -t wuyue/python3-app .
docker run -d -p 9001:9001 wuyue/python3-app
```

### ubuntu
```
# ubuntu18.04 & python3.7
docker build -t wuyue/python3-app:ubuntu -f Dockerfile.ubuntu .
docker run -d -p 9001:9001 wuyue/python3-app:ubuntu
```

### alpine
```
docker build -t wuyue/python3-app:alpine -f Dockerfile.alpine .
docker run -d -p 9001:9001 wuyue/python3-app:alpine
```

### with_nginx

```
docker build -t wuyue/python3-app:with_nginx -f Dockerfile.with_nginx .
docker run -d -p 9001:9001 -p 80:80 wuyue/python3-app:with_nginx
```