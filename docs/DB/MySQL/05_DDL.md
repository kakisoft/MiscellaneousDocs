## データベース作成
```
create database DATABASE_NAME;
```

## データベース削除
<https://dev.mysql.com/doc/refman/5.6/ja/drop-database.html>  
DROP SCHEMA は DROP DATABASE のシノニムです。
```
drop database DATABASE_NAME;
drop schema DATABASE_NAME;
```


## 現在選択中のデータベースを表示
```
select database();
```

## テーブル一覧表示
```
show tables from データベース名
（「from データベース名」はデータベース選択後なら省略可）
```

## スキーマ確認
```
desc テーブル名;
```

## テーブル作成
```
drop table if exists users;
create table users (
  id int unsigned
 ,name  varchar(20)
 ,score float
);
```

```
drop table if exists users;
create table users (
  id     int unsigned  primary key auto_increment
 ,name   varchar(20)   unique
 ,score  float         default 0.0  not null
 ,rank   enum('gold','silver','bronze')
);
```

## テーブル削除
```
drop table テーブル名;
```

## カラム追加
```
alter table users add column email varchar(255);

alter table users add column email varchar(255) after name;
```

## カラム削除
```
alter table users drop column email;
```

## カラム名変更
```
alter table users change email user_email varchar(80) default 'no';
```


## テーブルにコメントを追加
```
alter table `items` comment '商品マスタ'
```

## インデックス追加
CREATE INDEX インデックス名 ON テーブル名(カラム名1, カラム名2, ...);
```
CREATE INDEX items_index_1 ON items (job_id)
```

## インデックス削除
DROP INDEX インデックス名 ON テーブル名;
```
DROP INDEX items_index_1 ON items
```
