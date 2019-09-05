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

