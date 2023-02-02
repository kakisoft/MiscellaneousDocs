# MySQL - dump
<https://docs.oracle.com/cd/E17952_01/mysql-8.0-ja/mysqlpump.html>

## dumpファイル作成 / エクスポート / Export
```
mysqldump -u root -p DATABASE_NAME > dump_file.sql 

// パスワードを指定
mysqldump --user=root --password=password myapp01 > dump_file_20230201.sql

// オプションを追加
mysqldump --set-gtid-purged=OFF --skip-lock-tables --skip-add-locks --user=root --password=root myapp01 > dump_file_20230201.sql
mysqldump --set-gtid-purged=OFF --skip-lock-tables --skip-add-locks --skip-column-statistics --user=root --password=root myapp01 > dump_file_20230201.sql
```


<https://dev.mysql.com/doc/refman/5.6/ja/mysqldump.html>
```
--lock-tables      : ダンプされる各データベースに対して、ダンプするすべてのテーブルをダンプ前にロックする。
--skip-lock-tables : mysqldump中にREAD LOCKさせないようにする


"--opt" など、一部のオプションは "--lock-tables" を自動的に有効にします。これをオーバーライドするには、"--skip-lock-tables" をオプションリストの最後に使用します。
```

#### バイナリログ / バイナリロギング
<https://dev.mysql.com/doc/refman/8.0/ja/binary-log.html>


<https://blog.pinkumohikan.com/entry/mysqldump-disable-column-statistics>
```
mysql5.7のサーバに対して、mysql8クライアントでdumpを取ろうとすると出たりする。
MySQL8ではヒストグラム統計というのを考慮するようになり、dumpを生成しようとするときにANALYZE TABLE文を生成しようとする。
information_schema.COLUMN_STATISTICSを参照しようとするとが、これはmysq8からのスキーマでmysql5.7にはないので、エラーになっている。ということみたい。
「 –skip-column-statistics」オプションをつけてあげればいい。

mysqldump -u admin -p -h 127.0.0.1 -P 33060 --skip-column-statistics production > production.dump

mysqldump -u admin -p -h 127.0.0.1 -P 33060 --skip-column-statistics production > production.dump
```

MySQL 8にて、MySQL 5 の dumpを取ろうとすると、エラーが発生する。回避用のオプションを指定する必要がある。
```
–skip-column-statistics

mysqldump8以降でそれ以前 (5.7など)のMySQLサーバに対してダンプを実行した場合のエラーを回避するためのオプション
```


## dumpファイルから復元
```
mysql -u root -p DATABASE_NAME < dump_file.sql 

// パスワードを指定
mysql --host=localhost --user=root --password=password myapp01 < dump_file_20221119.sql
```

## dumpファイルから復元（文字コードを指定）
```
mysql -u root -p database_name --default-character-set=utf8 < dump_file.sql 
```
※上記では utf8を指定。インポート時に「Unknown command '\".」と出ていたら、これで回避できた。


____________________________________________________________________________________________
## テーブルを全部入れ替え
```
drop database DATABASE_NAME;
create database DATABASE_NAME;

--( ログアウト )

mysql -u root -p DATABASE_NAME < dump_file.sql
```





