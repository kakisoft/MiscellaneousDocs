## MySQLへ 接続

<https://dev.mysql.com/downloads/connector/j/>  
「プラットフォーム非依存（Platform Independent）」を選択。



### SQL Developer にプラグインを追加
```
ツール→プリファレンス→データベース→サードパーティJDBCドライバ→エントリの追加→
　「connector-java-X.X.XX-bin.jar」を指定する。

データベースの新規接続に、[MySQL]のタブが追加されている。
```

#### エラーメッセージ
```
ステータス: 失敗 -テストが失敗しました: The connection property 'zeroDateTimeBehavior' acceptable values are: 'CONVERT_TO_NULL', 'EXCEPTION' or 'ROUND'. The value 'convertToNull' is not acceptable.

The connection property 'zeroDateTimeBehavior' acceptable values are: 'CONVERT_TO_NULL', 'EXCEPTION' or 'ROUND'. The value 'convertToNull' is not acceptable.
```

## connections.xml を編集
C:\Users\（ユーザ名）\AppData\Roaming\SQL Developer\system18.2.0.x.xx\o.jdeveloper.db.connection\  
C:\Users\kakis\AppData\Roaming\SQL Developer\system18.2.0.183.1748\o.jdeveloper.db.connection\
```
         <StringRefAddr addrType="zeroDateTimeBehavior">
            <Contents>convertToNull</Contents>
         </StringRefAddr>

              ↓

         <StringRefAddr addrType="zeroDateTimeBehavior">
            <Contents>CONVERT_TO_NULL</Contents>
         </StringRefAddr>
```


### Connecting to MySQL 8.0
<https://community.oracle.com/thread/4144569>

### connections.xml
<https://stackoverflow.com/questions/7954759/where-does-oracle-sql-developer-store-connections>
C:\Users\（ユーザ名）\AppData\Roaming\SQL Developer\system18.2.0.x.xx\o.jdeveloper.db.connection\


_____________________________________________
## 備考
 * 定義書は出せない？ 
 * MySQL→Oracleの意向ができるっぽい。