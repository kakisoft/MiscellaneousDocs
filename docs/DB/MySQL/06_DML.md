## insert
```
insert into users (id, name, score) values (1, 'kaki'  , 5.8 );


insert into users (id, name, score, rank) values 
    (2, 'ogawa' , 8.2, 'gold'  )
   ,(3, 'yamato', 6.1, 'silver')
   ,(4, 'fukui' , 1.0,  3 )
;
```
enumへの insertは数値でも可。（1～　開始する）

## like
```
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
```
select
 round(5.355)    -- 5
,round(5.355, 1) -- 5.4
,floor(5.833)    -- 5（切り捨て）
,ceil(5.238)     -- 6（切り上げ）
,rand();         -- 0以上1未満のランダムな値
```

## ランダムな値を抽出
```
select * from users order by rand() limit 1;
```

## 文字列の演算
```
select
 length('Hello')         -- 5
,substr('Hello', 2)      -- ello
,substr('Hello', 2, 3)   -- ell
,upper('Hello')          -- HELLO
,lower('Hello')          -- hello
,concat('Hello','World') -- HelloWorld
,concat('a','b',null)    -- null （連結する文字に nullがあった場合）
;
```

## 日付の計算
```
SELECT
 DATE_ADD(CURRENT_DATE(),INTERVAL 3 MONTH)

```


## 日付型への変換（キャスト）
```
SELECT 
    CAST('20180823' AS DATE)                AS DATE01      -- 2018-08-23
   ,CAST('2018-08-23 11:20:00' AS DATETIME) AS DATETIME01  -- 2018-08-23 11:20:00
   ,STR_TO_DATE('2018-02-01',  '%Y-%M-%D')  AS X1

```
## 文字列から日付への変換・計算
```
SELECT
    DATE_ADD(CAST('2018/02/28' AS DATE), INTERVAL 1 MONTH) AS "2/28 の１か月後"
   ,DATE_ADD(CAST('2018/02/29' AS DATE), INTERVAL 1 MONTH) AS "2/29 の１か月後"
   ,DATE_ADD(CAST('2018/02/30' AS DATE), INTERVAL 1 MONTH) AS "2/30 の１か月後"
   ,DATE_ADD(CAST('2018/02/31' AS DATE), INTERVAL 1 MONTH) AS "2/31 の１か月後"

   ,DATE_ADD(CAST('2018/03/28' AS DATE), INTERVAL 1 MONTH) AS "3/28 の１か月前"
   ,DATE_ADD(CAST('2018/03/29' AS DATE), INTERVAL 1 MONTH) AS "3/29 の１か月前"
   ,DATE_ADD(CAST('2018/03/30' AS DATE), INTERVAL 1 MONTH) AS "3/30 の１か月前"
   ,DATE_ADD(CAST('2018/03/31' AS DATE), INTERVAL 1 MONTH) AS "3/31 の１か月前"

   ,DATE_ADD(CAST('2020/02/28' AS DATE), INTERVAL 1 MONTH) AS "2/28 の１か月後（うるう年）"
   ,DATE_ADD(CAST('2020/02/29' AS DATE), INTERVAL 1 MONTH) AS "2/29 の１か月後（うるう年）"
   ,DATE_ADD(CAST('2020/02/30' AS DATE), INTERVAL 1 MONTH) AS "2/30 の１か月後（うるう年）"
   ,DATE_ADD(CAST('2020/02/31' AS DATE), INTERVAL 1 MONTH) AS "2/31 の１か月後（うるう年）"

   ,DATE_ADD(CAST('2020/03/28' AS DATE), INTERVAL 1 MONTH) AS "3/28 の１か月前（うるう年）"
   ,DATE_ADD(CAST('2020/03/29' AS DATE), INTERVAL 1 MONTH) AS "3/29 の１か月前（うるう年）"
   ,DATE_ADD(CAST('2020/03/30' AS DATE), INTERVAL 1 MONTH) AS "3/30 の１か月前（うるう年）"
   ,DATE_ADD(CAST('2020/03/31' AS DATE), INTERVAL 1 MONTH) AS "3/31 の１か月前（うるう年）"
   
   
2018-03-28
2020-03-29


2/28 の１か月後	2018/03/28
2/29 の１か月後	NULL
2/30 の１か月後	NULL
2/31 の１か月後	NULL
3/28 の１か月前	2018/02/28
3/29 の１か月前	2018/02/28
3/30 の１か月前	2018/02/28
3/31 の１か月前	2018/02/28
2/28 の１か月後（うるう年）	2020/03/28
2/29 の１か月後（うるう年）	2020/03/29
2/30 の１か月後（うるう年）	NULL
2/31 の１か月後（うるう年）	NULL
3/28 の１か月前（うるう年）	2020/02/28
3/29 の１か月前（うるう年）	2020/02/29
3/30 の１か月前（うるう年）	2020/02/29
3/31 の１か月前（うるう年）	2020/02/29

```

