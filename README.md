# 启动

```
docker-compose up -d
```

# 说明

 - 会开放 http 81 和 https 444 端口 和 websocket 82 端口 和 http_dump 83 端口 和84-85端口
 - http 和 https 可访问的 url 有 / 和  /resp/ 下面的子目录, / 路径的网页会回显 query string 和 host，/resp/ 是列目录

