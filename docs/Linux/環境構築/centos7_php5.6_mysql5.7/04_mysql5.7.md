## CentOS 7.4に、MySQL 5.7 をインストール.
参考サイト  
<https://enomotodev.hatenablog.com/entry/2016/09/01/225200>  
　  

## デフォルトインストールされている MariaDBをアンインストール
```
sudo yum remove mariadb-libs
sudo rm -rf /var/lib/mysql
```

## yum リポジトリの追加
```
sudo rpm -ivh http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
```

## MySQL のインストール
```
sudo yum install mysql-community-server
```

## バージョン確認
```
mysqld --version
```


____________________________________________________________


## MySQL の起動
```
sudo systemctl start mysqld.service
```
## 自動起動の設定
```
sudo systemctl enable mysqld.service
```

## MySQL の初期パスワード確認
MySQL 5.7 では、初回起動時に初期パスワードが生成されるので、ログファイルから生成されたパスワードを確認する
```
sudo cat /var/log/mysqld.log | grep password

（例）
2018-08-07T09:02:54.205020Z 1 [Note] A temporary password is generated for root@localhost: GFgS-wCoG5oi
```

## ログイン
```
mysql -u root -p
```

## パスワードポリシーの変更（例）
```
set global validate_password_length=6;
set global validate_password_policy=LOW;
```

## パスワード変更（例）
```
set password = password('root');
```

