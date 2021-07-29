## ログイン
```
mysql -u root
mysql -u ユーザ名 -p [データベース名]
mysql -u root -p rootpassword


mysql -u user --password=mypass
※コマンドラインからのパスワード入力は推奨されない？　デフォルトでエラーとなってる？


（ユーザ名：dbuser01、DB：mydb01　で接続）
mysql -u dbuser01 -p mydb01

（リモート）
mysql -h <hostname> -u <remoteusername> -p
※hostnameは、IPでも可。
```
## データベース選択
```
use データベース名
```

## 終了
```
quit
```

_________________________________________________________
## 外部からの接続設定
https://kakistamp.hatenadiary.jp/entry/2016/12/03/225951

## 外部からの接続設定（簡易版）
```
set global validate_password_length=1;
set global validate_password_policy=LOW;

grant all privileges on *.* to root@"%" identified by 'root';

＜接続（ポート 4306）＞
mysql -h 127.0.0.1 -u root -P 4306 -p
```


## 権限の確認
```
show grants;
show grants for <ユーザ名>;
show grants for dbuser1;
```

## アクセス権の付与
※rootユーザがデータベースを作成したばかりだと、他のユーザは作成したDBを参照できない
```
GRANT ALL PRIVILEGES ON `mydb01`.* TO 'dbuser1'@'%'
```


