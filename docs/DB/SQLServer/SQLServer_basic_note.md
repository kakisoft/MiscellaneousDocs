```
/*

varchar
　Unicodeでない可変長の文字列。
  (最大 8000byte)

nvarchar
　Unicode可変長文字列。
  (最大 8000byte)

decimal(p, s)
numeric(p, s)
  p：全体の桁数　s：小数点以下の桁数
  両方同じ。ただのエイリアス。

float [ (n) ] 
（n の既定値は 53 ）

|   値   |有効桁数|  サイズ  |
|:-------|:-------|:---------|
| 1-24   |  7 桁  | 4 バイト |
| 25-53  | 15 桁  | 8 バイト |

  1<=n<=24 の場合、n は 24 として扱われ、25<=n<=53 の場合、n は 53 として扱
われる。 

※有効桁数…小数部、整数部をひっくるめた桁数。


text
  Unicodeでない可変長の文字列。
  (最大 2G)

ntext
  Unicodeでない可変長の文字列。
  (最大 2G)

image
  バイナリ

bit
  1, 0, NULL のどれか

table
  SELECT文実行結果のテーブルを格納可能

XML
  XMLデータを格納可能

uniqueidentifier
  16バイトのGUID(グローバルユニークID)

https://kaya-soft.com/sqlserver2008-toranomaki/beginner/columntype/

*/
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

SET @string1 = N'UniCodeの文字列'
SET @string2 = '非UniCodeの文字列'

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

