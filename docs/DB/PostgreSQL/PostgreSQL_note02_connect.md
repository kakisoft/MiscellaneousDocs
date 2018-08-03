## 接続
(su - postgres)
psql blogapp01

## 終了
\q

### バージョン確認
psql --version

## 一覧確認
```
psql -l
\l
```

## とりあえずの動作確認にでも
select now();


## CentOS7：外部からの接続設定
```
su - postgres
echo $PGDATA
---------------------------------------------
＜例＞
vi /var/lib/pgsql/9.6/data/postgresql.conf

listen_addresses = '接続を許可するIPアドレス'
listen_addresses = '*'  # 全アドレスから許可
---------------------------------------------
＜例＞
vi /var/lib/pgsql/9.6/data/pg_hba.conf

# TYPE  DATABASE        USER            ADDRESS                 METHOD
# IPv4 local connections:
host  all  all  接続を許可するIPアドレス    trust
host  all  all  all                       trust  # 全アドレスから許可
---------------------------------------------
＜再起動＞
systemctl restart postgresql-9.6.service
```