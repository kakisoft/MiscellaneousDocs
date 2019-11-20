なんと、viewに対して insert, update, delete といった、CRAD操作が出来てしまう。（SQL Serverの仕様）

```sql
create view [dbo].[my_sample01_view] as 
SELECT
   id
  ,name
  ,honorific_category_id
  ,CASE honorific_category_id 
      WHEN '0' THEN '' 
      WHEN '1' THEN '様邸'
      WHEN '2' THEN '様'
      WHEN '3' THEN '御中'
      WHEN '4' THEN '' 
      WHEN '5' THEN '様邸'
      WHEN '6' THEN '様'
      WHEN '7' THEN '御中'
      ELSE ''
   END AS honorific_content
  ,status
  ,memo
FROM
  dbo.users 
```







