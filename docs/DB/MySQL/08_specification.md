# サイズ

<https://dev.mysql.com/doc/refman/8.0/en/integer-types.html>  

|  Type       |  Storage (Bytes)  |  Minimum Value Signed  |  Minimum Value Unsigned  |  Maximum Value Signed  |  Maximum Value Unsigned  |
|:------------|:------------------|:-----------------------|:-------------------------|:-----------------------|:-------------------------|
|  TINYINT    |  1                |  -128                  |  0                       |  127                   |  255                     |
|  SMALLINT   |  2                |  -32768                |  0                       |  32767                 |  65535                   |
|  MEDIUMINT  |  3                |  -8388608              |  0                       |  8388607               |  16777215                |
|  INT        |  4                |  -2147483648           |  0                       |  2147483647            |  4294967295              |
|  BIGINT     |  8                |  -263                  |  0                       |  2^63 - 1              |  2^64 -1                 |


 * MySQL の一部の型は、型によって既にサイズが確定しており、サイズを好き勝手に変える事は出来ない。
 * 2^63 - 1 = 922,3372,0368,5477,5808  - 1
 * 2^64 - 1 = 1844,6744,0737,0955,1616 - 1

INT で範囲指定をするなら、「1～999999999（9桁）」ぐらいにしておくのが無難か。



## TIME型
```
Format         Sample
---------------------------
'HH:MM:SS'     '15:25:07'
'HH:MM'        '15:25'
'HHMMSS'       '152507'
'MMSS'         '2507'
'SS'           '07'
'D HH:MM:SS'   '2 15:25:07'
'D HH:MM'      '2 15:25'
'D HH''        '2 15'
```



## TEXT 
https://www.dbonline.jp/mysql/type/index6.html
```
TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]
最大長が 65,535 (216 ? 1) 文字。
オプションの長さ M を指定できる。

MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]
最大長が 16,777,215 (224 ? 1) 文字。

LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]
最大長が 4,294,967,295 または 4G バイト (232 ? 1) 文字。
```

```
$table->text('picture1')->after('name')->comment('写真1');
$table->mediumText('picture2')->comment('写真2');
$table->longText('picture3')->comment('写真3');


  `picture1` text       COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '写真1',
  `picture2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '写真2',
  `picture3` longtext   COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '写真3',
```

