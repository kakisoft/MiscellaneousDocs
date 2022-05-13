## dig コマンドのインストール
yum -y install bind-utils

## whois コマンドのインストール
yum install -y jwhois

__________________________________________
## dig
dig +noedns
```
dig github.com
dig github.com a +short
```

```
kaki@PMAC465S ~> dig mojimo.jp a +short
203.216.221.150
kaki@PMAC465S ~> whois 203.216.221.150

-------
descr:
```
## whois
インターネット上でのドメイン名やIPアドレスの所有者を検索し、ドメイン情報を表示するために使う。  
レジストリ・レジストラ（ドメインの管理事業者）を調べる。  
```
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


