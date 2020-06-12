## テーブル一覧
sys.tables でもいいのか？
```sql
select
    *
from 
    sys.objects 
where  1=1
  and  type = 'U'  -- ユーザテーブルのみ
--  and  schema_id = schema_id('paintbrain_development')  -- 特定のスキーマ配下
order by
    name
   ,object_id
```


## テーブル一覧（コメント付き）
```sql
select
    sys.tables.name
   ,sys.extended_properties.value
   ,sys.extended_properties.name
from
    sys.tables
    left join sys.extended_properties on sys.extended_properties.major_id = sys.tables.object_id
                                     and sys.extended_properties.minor_id = 0
where  1=1
  and  sys.extended_properties.name like 'MS_Description'
order by
    sys.tables.name
   ,sys.tables.object_id
```



## カラム一覧（コメント付き）
```sql
select
    sys.tables.name   as  'TableName'
--   ,sys.columns.column_id
   ,sys.columns.name  as  'ColumnName'
   ,sys.extended_properties.value
--   ,sys.extended_properties.name
FROM
    sys.tables
    left join sys.columns on sys.columns.object_id = sys.tables.object_id
    left join sys.extended_properties on sys.extended_properties.major_id = sys.columns.object_id
                                      and sys.extended_properties.minor_id = sys.columns.column_id
where  1=1
  and  sys.extended_properties.name like 'MS_Description'
order by 
    sys.tables.name
   ,sys.columns.column_id

```

## ストアドプロシージャ検索
```sql
select
 objects.type
,objects.name
,sql_modules.def


inition
from
 sys.sql_modules
 inner join sys.objects on sql_modules.object_id = objects.object_id
where  1=1
--  and  objects.type in ('FN','P')
--  and  name like 'TargetName%'
--  and  sql_modules.definition like '%SearchString%'
order by
 1,2
```

## オブジェクト一覧
```sql
SELECT  CASE type
            WHEN 'AF' THEN '集計関数 (CLR)'
            WHEN 'C'  THEN 'CHECK 制約'
            WHEN 'D'  THEN 'DEFAULT (制約またはスタンドアロン)'
            WHEN 'F'  THEN 'FOREIGN KEY 制約'
            WHEN 'FN' THEN 'SQL スカラー関数'
            WHEN 'FS' THEN 'アセンブリ (CLR) スカラー関数'
            WHEN 'FT' THEN 'アセンブリ (CLR) テーブル値関数'
            WHEN 'IF' THEN 'SQL インライン テーブル値関数'
            WHEN 'IT' THEN '内部テーブル'
            WHEN 'P'  THEN 'SQL ストアド プロシージャ'
            WHEN 'PC' THEN 'アセンブリ (CLR) ストアド プロシージャ'
            WHEN 'PG' THEN 'プラン ガイド'
            WHEN 'PK' THEN 'PRIMARY KEY 制約'
            WHEN 'R'  THEN 'ルール (旧形式、スタンドアロン)'
            WHEN 'RF' THEN 'レプリケーション フィルター プロシージャ'
            WHEN 'S'  THEN 'システム ベース テーブル'
            WHEN 'SN' THEN 'シノニム'
            WHEN 'SQ' THEN 'サービス キュー'
            WHEN 'TA' THEN 'アセンブリ (CLR) DML トリガー'
            WHEN 'TF' THEN 'SQL テーブル値関数'
            WHEN 'TR' THEN 'SQL DML トリガー'
            WHEN 'TT' THEN 'テーブルの種類'
            WHEN 'U'  THEN 'テーブル (ユーザー定義)'
            WHEN 'UQ' THEN 'UNIQUE 制約'
            WHEN 'V'  THEN 'ビュー'
            WHEN 'X'  THEN '拡張ストアド プロシージャ'
        END AS type_detail
        ,*
FROM
    sys.objects
WHERE  1=1
  AND  name like '%DF__some_table_junk__0B6ACA3E%'
```


