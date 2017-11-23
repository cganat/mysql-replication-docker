FROM mysql:5.7

# default replication user and pass
ENV REPLICATION_USER replication
ENV REPLICATION_PASSWORD replication_pass

#default mysql
ENV MYSQL_ROOT_PASSWORD mysqlroot
ENV MYSQL_USER example_user
ENV MYSQL_PASSWORD mysqlpwd
ENV MYSQL_DATABASE example

COPY script/replication-entrypoint.sh /usr/local/bin/
COPY script/init-slave.sh /

RUN chmod +x /usr/local/bin/replication-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/replication-entrypoint.sh"]
CMD ["mysqld"]
