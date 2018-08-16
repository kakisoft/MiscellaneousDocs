## 一般クエリログ
```
show variables like 'general_log';

SET GLOBAL general_log=ON;

--------------------------------------------------

/etc/my.cnf
[mysqld]
general_log # 詳細ログ有効化
#general_log_file=/usr/local/mysql/data/general.log # ファイルパス
general_log_file=/usr/local/mysql/data/general.log # ファイルパス

※要権限付与
```
<https://qiita.com/toshihirock/items/a97d174be68f485fbbf2>