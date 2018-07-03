# Webサーバ
Rails5から、WEBrick→pumaになった？

### 起動
```
rails s
```
### バックグラウンドで起動
```
rails s -d
```
### IPとポートを指定してバックグラウンドで起動
````
rails s -b 192.168.33.10 -p 3000 -d
````
### バックグラウンドで起動したWebサーバを停止
```
kill -9 `cat tmp/pids/server.pid`
```

## プロセスを検索
pumaの場合
```
ps aux | grep puma
```
WEBrickの場合
```
ps ax | grep rails
```

## gem基本操作
```
gem update
gem install <gem名>
gem install <gem名> -v <バージョン>
gem update <gem名>
```


