# mysql-replication-docker

# Start master

```
docker run -d \
 --name mysql_master \
 -v /data/mastermysql:/var/lib/mysql \
 cganat/mysql-replication-docker

```

# Start slave

```
docker run -d \
 --name mysql_slave \
 -v /data/slavemysql:/var/lib/mysql \
 --link mysql_master:master \
 cganat/mysql-replication-docker
```
