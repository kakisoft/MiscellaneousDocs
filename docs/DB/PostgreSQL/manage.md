## テーブル一覧を取得
```
select 
	relname as TABLE_NAME
from 
	pg_stat_user_tables
where  1=1
```