## dig コマンドのインストール
yum -y install bind-utils

## whois コマンドのインストール
yum install -y jwhois

__________________________________________
## dig    ドメインからIPアドレスを調べる。    正引き
dig www.npmjs.com npmjs.com

dig npmjs.com mx

dig +noedns
```
dig github.com
dig github.com a +short
```

```
kaki@PMAC465S ~> dig mojimo.jp a +short
203.216.221.150
kaki@PMAC465S ~> whois 203.216.221.150
```
descr:

リフレッシュ時間

ヘッダ・フッタを除くと最大で4つのセクションが表示される。
 * QUESTION：実行した検索内容
 * ANSWER：検索結果
 * AUTHORITY：ANSWERに権威を持つDNSサーバ（NSレコード）
 * ADDITIONAL：追加情報



whois    ドメイン情報を表示    名前解決    正引き


## whois    逆引き
インターネット上でのドメイン名やIPアドレスの所有者を検索し、ドメイン情報を表示するために使う。  
レジストリ・レジストラ（ドメインの管理事業者）を調べる。  
```
whois npmjs.com
whois 216.239.34.21
whois tigerkyoro.jp

whois kaki-engine.com | grep Registrant
```
使用例
```
kaki@PMAC465S ~> dig nintendo.co.jp mx +short
10 nintendo-co-jp.mail.protection.outlook.com.


dig nintendo-co-jp.mail.protection.outlook.com a +short
```

#### Whois.com - Free Whois Lookup - Whois IP Search & Whois Domain Lookup
https://www.whois.com/whois/


