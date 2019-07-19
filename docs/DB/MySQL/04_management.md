mysql.log  
slow query ログ


## 設定内容確認
```
show variables;

show variables like ‘port’;
```

## 設定ファイル
/etc/my.cnf


## データベース一覧表示
show databases


## データベース一覧表示（SQL）
```
select 
    TABLE_NAME 
from 
    information_schema.tables
where  1=1
```

## 前回のエラー内容を表示
show errors


## 前回の警告内容を表示
show warnings


## コンソールの表示内容整形（改行入って見づらい時）
```
ログイン後、
pager less -S

（レコードごとに縦表示する方法）

select * from table_name\G
```

## 外部ファイルを実行
```
（未接続状態から実行）
mysql -u root -p  < create_myqpp01.sql

（接続状態から実行１）
 \. ./create_myqpp01.sql

（接続状態から実行２）
source create_myqpp01.sql
```

## スレーブの状態確認
```
show slave status\G
```
__________________________________________

【 CentOS 】
## 再起動
```
sudo systemctl restart mysqld.service
```

__________________________________________
## テーブル名とカラム名を抽出
```sql
select 
    table_name
   ,column_name
from
    information_schema.columns 
where  1=1
--  and  table_schema="db01"
--  and  table_name = 'teble01'
  and  column_name like '%mail%' 
order by
    table_name
   ,column_name 
;
 
/*
use information_schema;
としておくと、スキーマ名を省略可。
*/
```