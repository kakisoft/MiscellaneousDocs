## 接続
(su - postgres)
psql blogapp01

## 接続（ユーザ名とホスト名を指定）
```
psql -U postgres -h localhost
```

## 終了
\q

### バージョン確認
psql --version

## 一覧確認
※ポスグレに接続していなくてもOK
```
psql -l
\l
```

## とりあえずの動作確認にでも
select now();


## デフォルトのポート番号
5432
