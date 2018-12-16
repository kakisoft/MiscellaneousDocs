https://www.turbolinux.co.jp/products/server/11s/user_guide/posgrestart.html
## 起動
```

sudo service postgresql-9.6 start
```

## 再起動
```
sudo service postgresql restart
sudo service postgresql-9.6 restart
```

## 設定ファイル再読み込み
```
sudo service postgresql-9.6 reload
```

## テーブル一覧表示
```
\dt

（検索する場合）
\dt account*
```

## 接続と同時に色々
```
psql -U tslai -d toaw6 -c "UPDATE res_users SET password='admin' where id=1" 

-U    ユーザ
<<<<<<< HEAD
-d    データベース
=======
-d    DB？
>>>>>>> 86902514e0f514bc9ebe19e40970c0dc9913d193
-c    実行内容
-h    hostname
-W    password
```