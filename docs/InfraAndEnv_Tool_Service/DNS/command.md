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
whois 216.239.34.21
whois tigerkyoro.jp


```
kaki@PMAC465S ~> dig nintendo.co.jp mx +short
10 nintendo-co-jp.mail.protection.outlook.com.


dig nintendo-co-jp.mail.protection.outlook.com a +short
```


