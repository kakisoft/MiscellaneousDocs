## 請求書：日本語が表示されない
日本語フォントをインストールする  
https://www.quartile.co/forum/1/question/76
```
sudo docker exec -u root -it odoo /bin/bash
apt update
apt install fonts-vlgothic
apt-get install fonts-noto fonts-noto-cjk
```

