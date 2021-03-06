## エスケープ
```sql
VALUES (E'55271', E'2', E'1', E'2019-10-16 11:58:44');

文字列中にエスケープが必要な場合は、E'...' の形式の文字列 (先頭に E) を使わなければなりません。
E のつかない文字列は、バックスラッシュは単にバックスラッシュ1文字として扱われます。また、シングルクォートは2つ重ねて '' とエスケープします。
```

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

## case
```sql
SELECT
    id
   ,email
   ,is_admin
   ,CASE 
      WHEN is_admin='0' then '管理者'
      WHEN is_admin='1' then '一般'
      ELSE ' '
    END AS user_type
FROM
    users
```

## offset
```sql
select * from table01 order by title limit 3 offset 3;

※ 1件目から開始させる場合、offset は 0
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
```sql
SELECT
    user_id                  AS num_user_id
   ,CAST(user_id AS VARCHAR) AS user_id
   ,CAST(NOW() AS VARCHAR)   AS date_to_char01
FROM
    USERS
```

## 現在の日時
```sql
select
    now()                                  -- "2018-10-22 14:11:39.286429+09"
   ,current_date                           -- "2018-10-22"
   ,current_time                           -- "14:11:39.286429+09"
   ,current_timestamp                      -- "2018-10-22 14:11:39.286429+09"
   ,date_trunc('hour', current_timestamp)  -- "2018-10-22 14:00:00+09"


where  1=1
  and  event_start_date >= current_date
```

## merge/upsert　：無ければ insert、あれば update
```
INSERT INTO mytable01 (id, target_yymm, category, count, created_at, update_date) VALUES (4, '2018', '1', 1, now())
ON CONFLICT ON CONSTRAINT my_table01_pkey
DO UPDATE SET count = mytable01.count + 1

１行目：普通の INSERT文
２行目：制約名
３行目：INSERTが実行できなかった時の UPDATE文
※制約名は、information_schema.table_constraints から参照。
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