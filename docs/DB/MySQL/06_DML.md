## insert
```sql
insert into users (id, name, score) values (1, 'kaki'  , 5.8 );


insert into users (id, name, score, rank) values 
    (2, 'ogawa' , 8.2, 'gold'  )
   ,(3, 'yamato', 6.1, 'silver')
   ,(4, 'fukui' , 1.0,  3 )
;
```
enumへの insertは数値でも可。（1～　開始する）


## insert : LAST_INSERT_ID()
```sql
use database01;

INSERT INTO contracts 
(
  type, bill_id, plan_id, term, start_date   , end_date    , created_at
) VALUES (
  0   , 269231 , 1      , 0   , '2019-01-01' , '2019-12-31', NOW()
);


insert into users (
(
  first_name, last_name, contract_id
) VALUES (
  'YAMADA'  , 'TARO'   , LAST_INSERT_ID()
);
```

## like
```sql
select * from users where name like 'K%'
小文字の「k」も検索対象となる。

区別する場合は、binary句を使用する。
select * from users where name like binary 'K%';
```

## limit
```
select * from users limit 3;

（最初の３件を除外して、次の３件を表示）
select * from users limit 3 offset 3;

（上位３件）
select * from users order by score desc limit 3;
```

## 組み込み関数
```sql
select
 round(5.355)    -- 5
,round(5.355, 1) -- 5.4
,floor(5.833)    -- 5（切り捨て）
,ceil(5.238)     -- 6（切り上げ）
,rand();         -- 0以上1未満のランダムな値
```

## ランダムな値を抽出
```sql
select * from users order by rand() limit 1;
```

## 文字列の演算
```sql
select
 length('Hello')         -- 5
,substr('Hello', 2)      -- ello
,substr('Hello', 2, 3)   -- ell
,upper('Hello')          -- HELLO
,lower('Hello')          -- hello
,concat('Hello','World') -- HelloWorld  文字列の連結
,concat('a','b',null)    -- null （連結する文字に nullがあった場合）
;
```

## ユーティリティ
```sql
SELECT
    REPLACE(my_content, CHAR(9), ' ') AS "タブをスペースに変換"

```

## 日付の差分
```sql
SELECT
 DATE_FORMAT(NOW(), '%Y%m%d') -- => 20190325
,DATE_FORMAT(NOW(), '%Y%m')   -- => 201903

-- // 開始日 と 終了日 までの日数を取得 //
,DATEDIFF('2019-3-10','2019-03-20')     -- => -10
,DATEDIFF('2019-3-10', CURRENT_DATE())  -- => -15（とか）

-- // 開始時刻 と 終了時刻 までの時刻の差を取得 //
,TIMEDIFF('2019:02:01 13:00:00','2019:02:01 00:00:00') -- => 13:00:00
,TIMEDIFF('11:30:00','00:00:00')                       -- => 11:30:00
,TIMEDIFF('2019-02-27 00:00:00',CURRENT_TIMESTAMP())   -- => -637:02:09（など）

-- // 開始日 と 終了日 までの月数の差を取得 //
,PERIOD_DIFF('201902','201912')  -- => -10
,PERIOD_DIFF('9802','9512')      -- => 26

-- // 開始日 と 終了日 までのタイムスタンプの差を取得 //
,TIMESTAMPDIFF(MONTH,'2013-02-01','2014-03-01')  -- => 13
,TIMESTAMPDIFF(YEAR,'2013-02-01','2014-03-01')   -- => 1
,TIMESTAMPDIFF(HOUR,'2014-02-01','2014-02-03')   -- => 48


-- WHERE service_expiry_date >= DATE_FORMAT(NOW(), '%Y%m%d') -- 期限切れを対象外とする
```


## キャスト
```sql
SELECT
    CAST(created_at AS CHAR)
   ,CONCAT(CAST(date_from_yyyy AS CHAR), '/', CAST(date_from_mm AS CHAR), '/', CAST(date_from_dd AS CHAR)) AS "開始日"
   ,CONCAT(CAST(date_to_yyyy   AS CHAR), '/', CAST(date_to_mm   AS CHAR), '/', CAST(date_to_dd   AS CHAR)) AS "終了日"

   ,CAST(CONCAT(date_from_yyyy, date_from_mm, date_from_dd)  AS SIGNED) -- (数値に変換)20180115  など
```

## 日付型への変換（キャスト）
```sql
SELECT 
    CAST('20180823' AS DATE)                AS DATE01      -- 2018-08-23
   ,CAST('2018-08-23 11:20:00' AS DATETIME) AS DATETIME01  -- 2018-08-23 11:20:00
   ,STR_TO_DATE('2018-02-01',  '%Y-%M-%D')  AS X1
```

## 日付の計算
```sql
SELECT
 DATE_ADD(CURRENT_DATE(),INTERVAL 3 MONTH)

```

## 文字列から日付への変換・計算
```sql
SELECT
    DATE_ADD(CAST('2018/01/28' AS DATE), INTERVAL 1 MONTH) AS "1/28 の１か月後"
   ,DATE_ADD(CAST('2018/01/29' AS DATE), INTERVAL 1 MONTH) AS "1/29 の１か月後"
   ,DATE_ADD(CAST('2018/01/30' AS DATE), INTERVAL 1 MONTH) AS "1/30 の１か月後"
   ,DATE_ADD(CAST('2018/01/31' AS DATE), INTERVAL 1 MONTH) AS "1/31 の１か月後"

   ,DATE_ADD(CAST('2018/03/28' AS DATE), INTERVAL -1 MONTH) AS "3/28 の１か月前"
   ,DATE_ADD(CAST('2018/03/29' AS DATE), INTERVAL -1 MONTH) AS "3/29 の１か月前"
   ,DATE_ADD(CAST('2018/03/30' AS DATE), INTERVAL -1 MONTH) AS "3/30 の１か月前"
   ,DATE_ADD(CAST('2018/03/31' AS DATE), INTERVAL -1 MONTH) AS "3/31 の１か月前"

   ,DATE_ADD(CAST('2020/01/28' AS DATE), INTERVAL 1 MONTH) AS "2/28 の１か月後（うるう年）"
   ,DATE_ADD(CAST('2020/01/29' AS DATE), INTERVAL 1 MONTH) AS "2/29 の１か月後（うるう年）"
   ,DATE_ADD(CAST('2020/01/30' AS DATE), INTERVAL 1 MONTH) AS "2/30 の１か月後（うるう年）"
   ,DATE_ADD(CAST('2020/01/31' AS DATE), INTERVAL 1 MONTH) AS "2/31 の１か月後（うるう年）"

   ,DATE_ADD(CAST('2020/03/28' AS DATE), INTERVAL -1 MONTH) AS "3/28 の１か月前（うるう年）"
   ,DATE_ADD(CAST('2020/03/29' AS DATE), INTERVAL -1 MONTH) AS "3/29 の１か月前（うるう年）"
   ,DATE_ADD(CAST('2020/03/30' AS DATE), INTERVAL -1 MONTH) AS "3/30 の１か月前（うるう年）"
   ,DATE_ADD(CAST('2020/03/31' AS DATE), INTERVAL -1 MONTH) AS "3/31 の１か月前（うるう年）"
   
   
2018-03-28
2020-03-29

＜5.7＞
2/28 の１か月後	2018/02/28
2/29 の１か月後	2018/02/28
2/30 の１か月後	2018/02/28
2/31 の１か月後	2018/02/28
3/28 の１か月前	2018/02/28
3/29 の１か月前	2018/02/28
3/30 の１か月前	2018/02/28
3/31 の１か月前	2018/02/28
2/28 の１か月後（うるう年）	2020/03/28
2/29 の１か月後（うるう年）	2020/03/29
2/30 の１か月後（うるう年）	2020/03/29
2/31 の１か月後（うるう年）	2020/03/29
3/28 の１か月前（うるう年）	2020/02/28
3/29 の１か月前（うるう年）	2020/02/29
3/30 の１か月前（うるう年）	2020/02/29
3/31 の１か月前（うるう年）	2020/02/29

```


## 特定のステータスをカウント
```
select
    IF(count(prpject_state = 1 OR NULL) > 0, 1, 0) AS Todo
   ,IF(count(prpject_state = 2 OR NULL) > 0, 1, 0) AS Working
   ,IF(count(prpject_state = 3 OR NULL) > 0, 1, 0) AS Done

```