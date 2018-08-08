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

## ステータス確認
```
sudo systemctl status httpd.service

ps aux | grep httpd
```



