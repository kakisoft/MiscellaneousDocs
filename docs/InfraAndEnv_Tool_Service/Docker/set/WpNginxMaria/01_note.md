## 参考サイト様
https://anopara.net/2017/12/20/docker-compose%E3%81%A7wordpress-mariadb-nginx%E7%92%B0%E5%A2%83%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B/


## ディレクトリを作る
```
mkdir wp
cd wp
mkdir db-data logs nginx wordpress
```

## Nginx設定ファイル
```
vi nginx/wordpress.conf
```

## docker-compose.yml
```

```

## 実行
```
docker-compose up
```

ログ、Wordpressの構成ファイル、DBのデータはそれぞれlog, wordpress, db-dataに保存される。

