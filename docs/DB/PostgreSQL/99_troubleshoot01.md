https://qiita.com/tomlla/items/9fa2feab1b9bd8749584

## peer認証の関係でpsqlログインできない時の対処法
ポスグレの新しいバージョンでの認証方式？
```
（エラー）
Peer authentication failed for user "kaki01"
```

## 対処法
```
（postgres ユーザのパスワードを再設定）
sudo su postgres -c 'psql --username=postgres'

（パスワード設定）
ALTER USER postgres with encrypted password 'postgres';

（pg_hba.confを修正）
local all postgres md5

（再起動）
sudo service postgresql restart

（ログイン）
psql -U postgres -h localhost -W
```

