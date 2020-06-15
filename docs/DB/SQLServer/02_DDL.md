## CREATE TABLE
```sql
CREATE TABLE [dbo].[promoters] (
	[id] [INT] IDENTITY(1,1)  NOT NULL PRIMARY KEY,
	[promoter_name] [NVARCHAR](50) NOT NULL,
	[logo_url] [NVARCHAR](100) NOT NULL,
	[del_flg] [TINYINT] NOT NULL,
	[create_date] [DATETIME] NOT NULL,
	[update_date] [DATETIME] NOT NULL
);
```

____________________________________________________________________________________________
## ALTER TABLE
```sql
ALTER TABLE my_table_01 ADD telephone_number VARCHAR(50) NULL;

ALTER TABLE my_table_01 ALTER COLUMN telephone_number VARCHAR(20) NULL;

ALTER TABLE my_table_01 DROP COLUMN telephone_number;
```


#### DROP COLUMN 時に外部制約エラーが発生した場合
```
ALTER TABLE DROP COLUMN telephone_number は失敗しました。1 つ以上のオブジェクトがこの列を参照しています。

オブジェクト 'DF__some_table_junk__0B6ACA3E' は 列 'telephone_number' に依存しています。
```


先に制約を削除する
```sql
Alter Table my_table_01 DROP CONSTRAINT DF__some_table_junk__0B6ACA3E
```

____________________________________________________________________________________________
## DROP TABLE
```sql
DROP TABLE [dbo].[promoters]
```


