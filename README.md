# openjdk 镜像底包创建

`Dockerfile` 相较于 `Dockerfile-slim` 安装了 `dig nslookup ping curl` 工具, 
如果不需要这些工具可以使用 `Dockerfile-slim` 创建镜像包将更小

[Docker 镜像地址](https://hub.docker.com/r/liwanggui/openjdk/tags)

*Dockerfile*

```bash
docker build -t openjdk:8-ubuntu .
```

*Dockerfile-slim*

```bash
docker build -t openjdk:8-ubuntu-slim -f Dockerfile-slim .
```

> 注: 如使用 `podman` 容器管理工具，只需要将上面的 `docker` 命令替换为 `podman` 即可.
