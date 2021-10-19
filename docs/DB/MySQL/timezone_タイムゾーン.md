## タイムゾーンを確認
```sql
show variables like '%time_zone%'
```

|  Variable_name     |  Value   |
|:-------------------|:---------|
|  system_time_zone  |  UTC     |
|  time_zone         |  SYSTEM  |



|  変数名                            |  値       |  意味                  |
|:--------------------------------|:---------|:---------------------|
|  system_time_zone               |  JST     |  データベースシステムのタイムゾーン（JST = 日本時間）   |
|  time_zone                      |  SYSTEM  |  セッションのデフォルトのタイムゾーン。SYSTEM = system_time_zone と同じ  |

______________________________________________________________________________
## タイムゾーン変換
timestamp 型、time 型、どちらでもOK
```sql
select
    id
   ,created_at
   ,convert_tz(created_at, 'UTC', 'Asia/Tokyo') as "UTC → Asia/Tokyo  1"
   ,job_start_time
   ,convert_tz(job_start_time, "UTC", "Asia/Tokyo") as "UTC → Asia/Tokyo  2"
-- ,CAST('2021/10/18 18:30:00' AS time) 
   ,CAST( convert_tz(job_start_time, 'UTC', 'Asia/Tokyo')  AS time) as "UTC → Asia/Tokyo  3"
from
  samples
```


