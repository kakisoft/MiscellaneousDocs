### apache：バージョンを指定してインストール
```
(例)
yum list | grep httpd
sudo yum install httpd.x86_64
sudo yum install httpd-devel.x86_64

（バージョン確認）
httpd -v
```

_____________________________________________________
_____________________________________________________
## CentOS 7 ： apache
7 より、systemctl で制御する。

### 起動
```
sudo systemctl start httpd.service
```

### 停止
```
sudo systemctl stop httpd.service
```

### 再起動
```
sudo systemctl restart httpd.service
```

### 自動起動設定
```
sudo systemctl enable httpd.service
```

### 自動起動の設定確認
```
sudo systemctl is-enabled httpd.service 
```

### 自動起動設定の解除
```
sudo systemctl disable httpd.service
```

## ステータス確認
```
sudo systemctl status httpd.service

ps aux | grep httpd
```
_____________________________________________________
_____________________________________________________
** 設定変更後は apacheを再起動。**  
```
sudo systemctl restart httpd.service
```

※仮想環境の場合、要ポート追加。（のケースがある）
```
curl: (7) Failed to connect to 127.0.0.1 port 80: Connection refused
```
<https://www.adminweb.jp/apache/>

## httpd.conf
様々な設定を記述。 
　  
通常、
```
/etc/httpd/conf/httpd.conf
```
無ければ検索。
```
sudo find / -name "httpd.conf"
```

## ポート追加
```
Listen 80
Listen 8080

（80 と 8080 で待ち受けするようになる）
特定の IPやポートから受け付ける場合、以下のような設定。

Listen 192.168.128.1:80
```

## ドキュメントルート
コンテンツを配置しておく場所。
```
DocumentRoot "/var/www/html"

　　↓変更可

（例）
DocumentRoot "/vagrant/shared"
```
## Directory 設定
webサーバは apacheユーザでログインする？  
アクセスできない場合、ディレクトリそのもののパーミッションにも注意。
```
<Directory "/var/www">
    AllowOverride None
    # Allow open access:
    Require all granted
</Directory>

  ↓

<Directory "/vagrant/shared">
    AllowOverride All
    Options FollowSymLinks
    Require all granted
</Directory>

```
_____________________________________________________
