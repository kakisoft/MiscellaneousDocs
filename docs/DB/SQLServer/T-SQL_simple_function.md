## in 句に複数条件を渡す
配列形式のパラメータは無いらしい。
```sql
DECLARE @params TABLE(
      ID INT
);

INSERT INTO @params VALUES
   (1),(2),(3),(4),(5);


SELECT
 *
FROM
 my_table_01
WHERE  1=1
  AND  id in (select * from @params)
```



## UPDATE文的なもの
```sql
declare @contract_id_before int = 67470;  -- 契約番号（変更前）
declare @contract_id_after  int = 67930;  -- 契約番号（変更後）


begin try
	begin tran;
		select * from prices where contract_id in (@contract_id_before, @contract_id_after);
		update prices set contract_id = @contract_id_after where contract_id = @contract_id_before;
		select * from prices where contract_id in (@contract_id_before, @contract_id_after);
	--commit tran;
	rollback tran;
end try
begin catch
	rollback tran;
	select
		ERROR_NUMBER() AS ErrorNumber
		,ERROR_SEVERITY() AS ErrorSeverity
		,ERROR_STATE() AS ErrorState
		,ERROR_PROCEDURE() AS ErrorProcedure
		,ERROR_LINE() AS ErrorLine
		,ERROR_MESSAGE() AS ErrorMessage;
end catch;
```

