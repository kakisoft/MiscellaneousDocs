## ログ出力設定
コンフィグを編集
```
/var/lib/pgsql/9.6/data/postgresql.conf
/etc/postgres/10/main/postgresql.conf

#log_statement = 'none'
    ↓
log_statement = 'all'
（実行された全てのSQLがログに出力されるようになる。）



「log_destination」に「stderr」と指定し、
「logging_collector」に「on」と指定すると、
実行されたSQLのログが指定されたディレクトリのファイルに出力されるようになります。


log_directory：ログファイルを保存するディレクトリ。

log_filename：ログファイルの名前。
```

```
log_destination = 'stderr'
log_directory = 'pg_log'
log_filename = 'postgresql-%a.log'

「%a」は曜日を表すアルファベット3文字
```

## 内容確認
```
sudo view  /var/lib/pgsql/9.6/data/pg_log/postgresql-Wed.log
           /var/log/postgresql/
など
```