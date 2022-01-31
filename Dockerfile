FROM mysql:8.0
# FROM mysql:5.7.37

ENV MYSQL_ROOT_PASSWORD rootpass
ENV MYSQL_DATABASE test
ENV MYSQL_USER testuser
ENV MYSQL_PASSWORD testpass

# initial data
COPY init/world.sql /docker-entrypoint-initdb.d/world.sql
COPY init/world.sql /docker-entrypoint-initdb.d/world.sql
COPY init/*.csv /docker-entrypoint-initdb.d/csv/

# configuration
COPY ./config/my.conf /etc/mysql/conf.d/my.cnf

