# sql

sql practice

## command

https://zenn.dev/jojojo/articles/f1223bb06cf5be

```sh
$ docker build -t docker-mysql-8 .
$ docker run -d -v $PWD/db:/var/lib/mysql -p 13306:3306 docker-mysql-8
$ docker exec -it docker-mysql-8 bash

$ mysql -u testuser -p
testpass

# copy data
mysqldump -u ユーザー名 -p -h 共用DBのホスト名 データベース名 > 〇〇.sql
docker cp {プロジェクト名 + 日付}.sql docker-mysql-8-0:/tmp/

mysql -u testuser -p test < tmp/{プロジェクト名 + 日付}.sql
```
