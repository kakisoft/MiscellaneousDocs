## よく使う構文
```sql
select
 getdate() as "本日の日付"

,cast('00789' as int) as "文字列を数値に変換"
,cast(12345 as varchar) as "文字列に変換"
,cast(getdate() as varchar) as "本日の日付(文字列)"
,cast('2018/01/01' as datetime)  as "datetime"  --ミリ秒まで
,cast('2018/01/01' as datetime2) as "datetime2" -- マイクロ秒まで
,convert(datetime, left(convert(varchar, dateadd(month, 0, getdate()), 112), 6) + '01') as "月初1"
,dateadd( day,1-datepart(day, getdate()), getdate()) as "月初2"
,eomonth(getdate()) as "月末の日にち"
,datediff(month, cast('2018/01/01' as date), cast('2018/05/15' as date))  as  "月の差分"  --(結果：4)

,convert(varchar(5), 12345) as "convert1"
,convert(varchar, getdate(), 112) as "yyyymmdd"
,convert(varchar, getdate(), 11) as "yy/mm/dd"
,convert(varchar, getdate(), 111) as "yyyy/mm/dd"

,right('   ' + '1' , 4) as "先頭スペース埋め"
,left('12' + '   ' , 4) as "後方スペース埋め"

,format(1, '0000') as "先頭0埋め1"
,format(1, 'D4')   as "先頭0埋め2" -- 1と同じ

,cast('1' as varchar) + 1   as "結果：2"   -- 勝手に数値型に変換される
,cast('1' as varchar) + '1' as "結果：11"  -- 連結させたい場合、文字列である事を明示する

,convert(varchar(2),'あいうえお')  as  "byte単位で切り出し" --型変換を利用して、擬似的に実現する
,convert(varchar(10),reverse('あいうえお'))  as "末尾から切り出し"
,substring(cast('あいうえお' as text), 3, 4)  as "途中からバイト単位で切り出し" --(先頭は1)

,LEN('あいうえお') as "長さ" -- 5
,DATALENGTH('あいうえお') as "バイト長" --10

,CASE
    WHEN category_id = '男' THEN 1
    WHEN category_id = '女' THEN 2
    ELSE 99
 END
```


## 日付
```sql
SELECT
    DATEADD(MONTH, 1, CAST('2018/01/28' AS DATE)) AS "1/28 の１か月後"
   ,DATEADD(MONTH, 1, CAST('2018/01/29' AS DATE)) AS "1/29 の１か月後"
   ,DATEADD(MONTH, 1, CAST('2018/01/30' AS DATE)) AS "1/30 の１か月後"
   ,DATEADD(MONTH, 1, CAST('2018/01/31' AS DATE)) AS "1/31 の１か月後"

   ,DATEADD(MONTH, -1, CAST('2018/03/28' AS DATE)) AS "3/28 の１か月前"
   ,DATEADD(MONTH, -1, CAST('2018/03/29' AS DATE)) AS "3/29 の１か月前"
   ,DATEADD(MONTH, -1, CAST('2018/03/30' AS DATE)) AS "3/30 の１か月前"
   ,DATEADD(MONTH, -1, CAST('2018/03/31' AS DATE)) AS "3/31 の１か月前"

   ,DATEADD(MONTH, 1, CAST('2020/01/28' AS DATE)) AS "1/28 の１か月後（うるう年）"
   ,DATEADD(MONTH, 1, CAST('2020/01/29' AS DATE)) AS "1/29 の１か月後（うるう年）"
   ,DATEADD(MONTH, 1, CAST('2020/01/30' AS DATE)) AS "1/30 の１か月後（うるう年）"
   ,DATEADD(MONTH, 1, CAST('2020/01/31' AS DATE)) AS "1/31 の１か月後（うるう年）"

   ,DATEADD(MONTH, -1, CAST('2020/03/28' AS DATE)) AS "3/28 の１か月前（うるう年）"
   ,DATEADD(MONTH, -1, CAST('2020/03/29' AS DATE)) AS "3/29 の１か月前（うるう年）"
   ,DATEADD(MONTH, -1, CAST('2020/03/30' AS DATE)) AS "3/30 の１か月前（うるう年）"
   ,DATEADD(MONTH, -1, CAST('2020/03/31' AS DATE)) AS "3/31 の１か月前（うるう年）"
```


## ＜with副問い合わせ＞
```sql

with alias1 as (
                  select
                   *
                  from
                   database.table1
               )
    ,alias2 as (
                  select
                   *
                  from
                   database.table2
               )
select
    *
from
    alias1
    left join alias2 on alias1.code_a = alias2.code_a
where  1=1
```

## ＜結合前にテーブルのレコードを絞る＞
```sql
from
   table1   
   left join table2 on table1.code_A  = table2.code_A
                   and table1.code_B  = table2.code_B
                   and table2.colomn1 = '0000'
                   and table2.colomn2 = 0

-- Oracleの
--    table2.colomn1(+) = '0000'
-- に相当。
```


## MERGE (upsert)
```sql
MERGE INTO my_table_01
USING 
(
   SELECT 
       795554    AS id
      ,'PENGUIN' AS name
      ,'BOX'     AS category
      , 230      AS price
      , 10       AS point
) AS dummy ON (       1=1
                 AND  my_table_01.id = dummy.id
              )
WHEN MATCHED THEN
UPDATE 
   SET category = dummy.category
      ,price    = dummy.price
      ,point    = dummy.point
WHEN NOT MATCHED THEN 
INSERT 
(
    name
   ,category
   ,price
   ,point
)
VALUES
(
    dummy.name
   ,dummy.category
   ,dummy.price
   ,dummy.point
);
```


## 改行付き
```sql
INSERT INTO [dbo].[my_table_01] (common_id,detail_id,param1,param2) 
VALUES (986,5,'異常なし','異常' + CHAR(13) + CHAR(10) + 'なし');
```


A5SQLは、末尾に「;」が付いているとエラーとなる？
