## タイムゾーンを確認
```sql
show variables like '%time_zone%'
```


|  変数名                            |  値       |  意味                  |
|:--------------------------------|:---------|:---------------------|
|  system_time_zone               |  JST     |  データベースシステムのタイムゾーン（JST = 日本時間）   |
|  time_zone                      |  SYSTEM  |  セッションのデフォルトのタイムゾーン。SYSTEM = system_time_zone と同じ  |



