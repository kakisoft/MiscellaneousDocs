## テーブル一覧を取得
```
select 
	relname as TABLE_NAME
from 
	pg_stat_user_tables
where  1=1
```

## テーブル情報を取得
```
SELECT
    table_name               AS "テーブル名"
   ,ordinal_position         AS "No"
   ,column_name              AS "カラム名"
   ,data_type                AS "データ型"
   ,character_maximum_length AS "文字数（文字列型）"
   ,character_octet_length   AS "バイト数（文字列型）"
   ,numeric_precision        AS "桁数（数値型）"
   ,numeric_scale            AS "小数部（数値型）"
   ,datetime_precision       AS "ミリ秒以下（日付型）"
   ,interval_type            AS "インターバルの単位（日付型）"
   ,is_nullable              AS "NULL_OK?"
   ,column_default           AS "デフォルト値"
FROM
  information_schema.columns
WHERE  1=1
  AND  table_name = 'table01'
ORDER BY
   ordinal_position
  ,table_name
```

## 制約情報を確認
```
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
```
SELECT 
    tablename
	,indexname
	,indexdef
FROM 
    pg_indexes
WHERE 1=1
--  AND tablename = 'table01';

```