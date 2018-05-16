# 安装

基础环境，要求 docker 和 docker-compose

 - 安装 docker https://docs.docker.com/install/
 - 安装 docker-compose `pip install docker-compose`

# 启动

```
docker-compose up -d
```

注意，如果使用 sudo，请使用 `sudo -E docker-compose up -d`

然后 `docker ps -a` 可以看到正在运行

```
➜  nginx-backend git:(master) ✗ docker ps -a
CONTAINER ID        IMAGE                                                COMMAND                  CREATED             STATUS              PORTS                                                                    NAMES
bf0809af401d        registry.docker-cn.com/library/nginx:1.13.5-alpine   "sh -c /deploy/run.sh"   3 minutes ago       Up 3 minutes        127.0.0.1:82-85->82-85/tcp, 0.0.0.0:81->80/tcp, 127.0.0.1:444->443/tcp   waf_backend_nginx
```

测试服务运行状态

```
➜  nginx-backend git:(master) ✗ curl http://127.0.0.1:81/\?a\=test -v
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to 127.0.0.1 (127.0.0.1) port 81 (#0)
> GET /?a=test HTTP/1.1
> Host: 127.0.0.1:81
> User-Agent: curl/7.54.0
> Accept: */*
>
< HTTP/1.1 200 OK
< Server: nginx/1.13.5
< Date: Wed, 16 May 2018 11:31:05 GMT
< Content-Type: application/octet-stream
< Content-Length: 139
< Connection: keep-alive
< Content-Type: text/html
<
* Connection #0 to host 127.0.0.1 left intact
<h1>It Workded!</h1> <p>Query string is a=test</p> <p>Host is 127.0.0.1:81</p> <p>X-Real-IP is </p> <p>XFF is </p> <p>Server port is 80</p>%
```

# 说明

 - 会开放 http 81 和 https 444 端口
 - http 和 https 可访问的 url 有 / 和  /resp/ 下面的子目录, / 路径的网页会回显 query string 和 host，/resp/ 是列目录

