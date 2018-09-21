## テーブル一覧を取得
```sql
select 
	relname as TABLE_NAME
from 
	pg_stat_user_tables
where  1=1
```
## テーブル一覧を取得（コメント付き）
```sql
select
    pg_stat_user_tables.relname as TABLE_NAME
   ,pg_description.description  as TABLE_COMMENT
from
    pg_stat_user_tables
	left join pg_description on pg_stat_user_tables.relid = pg_description.objoid
	                        and pg_description.objsubid=0
where  true
  and  pg_stat_user_tables.relname like 'xi%'
order by 1
```

## テーブル情報を取得
```sql
SELECT
    table_name                AS  "テーブル名"
   ,ordinal_position          AS  "No"
   ,column_name               AS  "カラム名"
   ,data_type                 AS  "データ型"
   ,character_maximum_length  AS  "文字数（文字列型）"
   ,character_octet_length    AS  "バイト数（文字列型）"
   ,numeric_precision         AS  "桁数（数値型）"
   ,numeric_scale             AS  "小数部（数値型）"
   ,datetime_precision        AS  "ミリ秒以下（日付型）"
   ,interval_type             AS  "インターバルの単位（日付型）"
   ,is_nullable               AS  "NULL_OK?"
   ,column_default            AS  "デフォルト値"
FROM
  information_schema.columns
WHERE  1=1
  AND  table_name = 'table01'
ORDER BY
   ordinal_position
  ,table_name
```

## 制約情報を確認
```sql
SELECT 
    constraint_name
   ,table_name
   ,constraint_type
FROM 
    information_schema.table_constraints
WHERE 1=1 
--  AND  table_schema = 'public'
  AND table_name = 'table01'
```

## インデックス確認
```sql
SELECT 
    tablename
	,indexname
	,indexdef
FROM 
    pg_indexes
WHERE 1=1
--  AND tablename = 'table01';

```

## シーケンス一覧
```sql
SELECT 
    pg_class.relname 
FROM
    pg_class 
	LEFT JOIN pg_user ON pg_class.relowner = pg_user.usesysid 
WHERE  1=1
  AND  pg_class.relkind = 'S'
```

## テーブル情報を取得（psql）
```
\d+ talbe01;
```

## カラム情報を取得
```sql
select 
	* 
from 
	information_schema.columns 
where  true
--  and  table_catalog='データベース名' 
--  and = table_name='テーブル名' 
order by 
	ordinal_position
;
```


## カラムコメント一覧を取得（未完成）
```sql
SELECT
    pg_stat_all_tables.relname  AS TABLE_NAME
   ,pg_attribute.attname        AS COLUMN_NAME
   ,pg_description.description  AS COLUMN_COMMENT
FROM
    pg_stat_all_tables
    left join pg_description on pg_stat_all_tables.relid = pg_description.objoid
    left join pg_attribute   on pg_description.objoid    = pg_attribute.attrelid
                            and pg_description.objsubid  = pg_attribute.attnum
WHERE  1=1
--	pg_stat_all_tables.relname='テーブル名'
ORDER BY
	pg_description.objsubid
```