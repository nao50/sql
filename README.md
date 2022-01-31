# sql

sql practice

## command

https://zenn.dev/jojojo/articles/f1223bb06cf5be

```sh
$ docker build -t docker-mysql-8:1 .
$ docker run -d -v $PWD/db:/var/lib/mysql -p 13306:3306 docker-mysql-8:1
$ docker exec -it docker-mysql-8 bash

$ mysql -u testuser --local-infile=1 -p
testpass

$ mysql -u root --local-infile=1 -p
rootpass

# copy data
mysqldump -u ユーザー名 -p -h 共用DBのホスト名 データベース名 > 〇〇.sql
docker cp {プロジェクト名 + 日付}.sql docker-mysql-8-0:/tmp/

mysql -u testuser -p test < tmp/{プロジェクト名 + 日付}.sql
```

## ref

test data
https://kakakakakku.hatenablog.com/entry/2017/11/08/193031
