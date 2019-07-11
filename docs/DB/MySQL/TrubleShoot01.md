## 接続エラー１
```
【 接続時 】
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' (2)


sudo systemctl restart mysqld.service

sudo touch /var/lib/mysql/mysql.sock
sudo chown mysql:mysql /var/lib/mysql/mysql.sock
```

## 接続エラー２
```
[root ~]# mysql -u root
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)


sudo systemctl stop mysqld.service
mysqld_safe --skip-grant-tables &
mysql -u root
```

## kill しても復活
```
Mac の launchctl という機能。

ローカルで動いているMysqlを停止しようとしても停止できず、プロセスをkillしても復活する。
brew service stop mysql でインストールした時に発生する。
```
