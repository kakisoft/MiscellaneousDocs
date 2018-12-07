https://www.turbolinux.co.jp/products/server/11s/user_guide/posgrestart.html
## 起動
```
sudo service postgresql-9.6 start
```

## 再起動
```
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
-d    パスワード？
-c    実行内容
```