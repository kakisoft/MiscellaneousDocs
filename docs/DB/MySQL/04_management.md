mysql.log  
slow query ログ


## 設定内容確認
```
show variables;

show variables like ‘port’;
```

## 設定ファイル
```
/etc/my.cnf
```

## データベース一覧表示
```
show databases
```
SQL ver
```sql
select
    DATABASE()
```


## テーブル一覧表示（SQL） +コメント
```sql
select
    trim(table_name)     as  table_name
   ,trim(table_comment)  as  table_comment
from
    information_schema.tables
where  1=1
  and  table_schema = database()
  and  table_name not in ('failed_jobs','migrations')
order by
    table_name
;
```


## テーブルと件数をチェック
```sql
select
    table_name
   ,table_rows
from
    information_schema.tables
where  1=1
  and  table_schema = database()
;
```


## 前回のエラー内容を表示
```
show errors
```

## 前回の警告内容を表示
```
show warnings
```

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
    trim(table_name)      as  table_name
   ,trim(column_name)     as  column_name
   ,trim(column_comment)  as  column_comment
from
    information_schema.columns
where  1=1
  and  table_schema = database()
  and  table_name not in ('migrations','cache','cache_locks','jobs','failed_jobs','password_resets')
--  and  table_schema="db01"
--  and  table_name = 'teble01'
--  and  column_name like '%mail%' 
order by
    table_name
   ,ordinal_position
--   ,column_name
;

/*
use information_schema;
としておくと、スキーマ名を省略可。
*/
```

__________________________________________
## テーブル名（論理・物理）とカラム名（論理・物理）を抽出
```sql
select
--   information_schema.columns.*
    trim(information_schema.columns.table_name)          as  table_name
   ,trim(information_schema.columns.column_name)         as  column_name
   ,information_schema.columns.data_type                 as  data_type
   ,information_schema.columns.is_nullable               as  is_nullable
   ,information_schema.columns.character_maximum_length  as  character_maximum_length
   ,information_schema.columns.column_default            as  column_default
   ,information_schema.columns.numeric_precision         as  numeric_precision
   ,information_schema.columns.numeric_scale             as  numeric_scale
from
    information_schema.columns
    left join information_schema.tables on information_schema.columns.table_name = information_schema.tables.table_name
where  1=1
  and  information_schema.tables.table_schema  = database()
  and  information_schema.columns.table_schema = database()
  and  information_schema.columns.table_name  not in ('migrations','cache','cache_locks','jobs','failed_jobs','password_resets')
  and  information_schema.columns.column_name not in ('created_at','created_by','deleted_at','deleted_by','updated_at','updated_by')
--  and  information_schema.columns.table_schema="db01"
  and  information_schema.columns.table_name in (
 'table_01'
,'table_02'
,'table_03'
)
-- order by
--    information_schema.columns.table_name
--   ,information_schema.columns.ordinal_position
--   ,information_schema.columns.column_name
```

__________________________________________
## インデックス一覧
```sql
select
     table_name
    ,index_name
    ,column_name
from
    information_schema.statistics
where  1=1
  and  table_schema = database()
  and  table_name   = 'items'
  and  index_name   = 'PRIMARY'

```

```
show index from <TABLE_NAME>
```

__________________________________________
## ユニークキー一覧
```sql
select
    TABLE_NAME
   ,CONSTRAINT_NAME
   ,CONSTRAINT_TYPE
from
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where  1=1
  and  TABLE_SCHEMA = database()
  and  TABLE_NAME   = 'users'
```

