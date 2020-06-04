# python3-app
## usage

### default
```
docker build -t wuyue/python3-app .
docker run -d -p 9000:9000 wuyue/python3-app
```

### with_nginx

```
docker build -t wuyue/python3-app:with_nginx .
docker run -d -p 9000:9000 -p 80:80 wuyue/python3-app:with_nginx
```