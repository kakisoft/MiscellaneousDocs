## insert
```sql
INSERT INTO table01 (title, body) VALUES ('title1','body001');


INSERT INTO table01 (title, body) VALUES 
 ('title3','body003')
,('title4','body004')
,('title5','body005')
;
```

## limit
```
（スコア上位３件）
select * from table01 order by score limit3;
```

```sql
SELECT 
    * 
FROM 
    table01 
WHERE true 
ORDER BY 
    title LIMIT 3
;
```

## offset
```sql
select * from table01 order by title limit 3 offset 3;
```

```
concat
substring
```
### ランダム
```sql
select ramdom()
```

### 無作為に抽出
```sql
select * from table01 order by random() limit 1;
```

## キャスト（文字列・日付）
```
SELECT
    user_id                  AS num_user_id
   ,CAST(user_id AS VARCHAR) AS user_id
   ,CAST(NOW() AS VARCHAR)   AS date_to_char01
FROM
    USERS
```

## 日付計算
```
SELECT
    CAST('2018/01/28' AS DATE) + interval '1 months' AS "1/28 の１か月後"
   ,CAST('2018/01/29' AS DATE) + interval '1 months' AS "1/29 の１か月後"
   ,CAST('2018/01/30' AS DATE) + interval '1 months' AS "1/30 の１か月後"
   ,CAST('2018/01/31' AS DATE) + interval '1 months' AS "1/31 の１か月後"
   
   ,CAST('2018/03/28' AS DATE) + interval '-1 months' AS "3/28 の１か月前"
   ,CAST('2018/03/29' AS DATE) + interval '-1 months' AS "3/29 の１か月前"
   ,CAST('2018/03/30' AS DATE) + interval '-1 months' AS "3/30 の１か月前"
   ,CAST('2018/03/31' AS DATE) + interval '-1 months' AS "3/31 の１か月前"   
   
   ,CAST('2020/01/28' AS DATE) + interval '1 months' AS "1/28 の１か月後（うるう年）"
   ,CAST('2020/01/29' AS DATE) + interval '1 months' AS "1/29 の１か月後（うるう年）"
   ,CAST('2020/01/30' AS DATE) + interval '1 months' AS "1/30 の１か月後（うるう年）"
   ,CAST('2020/01/31' AS DATE) + interval '1 months' AS "1/31 の１か月後（うるう年）"
   
   ,CAST('2020/03/28' AS DATE) + interval '-1 months' AS "3/28 の１か月前（うるう年）"
   ,CAST('2020/03/29' AS DATE) + interval '-1 months' AS "3/29 の１か月前（うるう年）"
   ,CAST('2020/03/30' AS DATE) + interval '-1 months' AS "3/30 の１か月前（うるう年）"
   ,CAST('2020/03/31' AS DATE) + interval '-1 months' AS "3/31 の１か月前（うるう年）"   

＜9.6＞
1/28 の１か月後	2018/2/28 0:00
1/29 の１か月後	2018/2/28 0:00
1/30 の１か月後	2018/2/28 0:00
1/31 の１か月後	2018/2/28 0:00
3/28 の１か月前	2018/2/28 0:00
3/29 の１か月前	2018/2/28 0:00
3/30 の１か月前	2018/2/28 0:00
3/31 の１か月前	2018/2/28 0:00
1/28 の１か月後（うるう年）	2020/2/28 0:00
1/29 の１か月後（うるう年）	2020/2/29 0:00
1/30 の１か月後（うるう年）	2020/2/29 0:00
1/31 の１か月後（うるう年）	2020/2/29 0:00
3/28 の１か月前（うるう年）	2020/2/28 0:00
3/29 の１か月前（うるう年）	2020/2/29 0:00
3/30 の１か月前（うるう年）	2020/2/29 0:00
3/31 の１か月前（うるう年）	2020/2/29 0:00

```