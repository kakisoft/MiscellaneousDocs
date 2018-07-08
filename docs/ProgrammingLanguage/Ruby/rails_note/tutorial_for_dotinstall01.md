### ひな形作成
```
rails new myapp
```

### ローカルサーバ起動
```
rails server -b 192.168.33.10 -d
※ -d ・・・バックグラウンドで起動

http://192.168.33.10:3000/
```
[詳細](http://railsdoc.com/rails)


## バックグランドで起動したプロセスを削除
```
kill -9 `cat tmp/pids/server.pid`
```

## ログ確認
```
tail log/development.log
```


## Scaffold
```
rails g scaffold Memo title:string body:text
```

## migrate
```
rails db:migrate
```
schema.rb にてスキーマを確認。