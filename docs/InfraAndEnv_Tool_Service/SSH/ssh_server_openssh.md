## sshサーバのインストール状況を確認
```
【 CentOS 】
（インストール状況）
rpm -qa | grep ssh

（インストール先のフォルダ）
rpm -ql openssh-server

（デーモン）
ps aux | grep sshd


```


## 鍵登録
```
（内容確認）
cat ~/.ssh/id_rsa.pub


・鍵情報をコピー
ssh -i id_rsa -p 60897 kaki@10.160.132.159


・鍵を置く
（odoo@nrq-staging:/home/kaki$）
echo "ssh-rsa hogeeeeAA1Ap9bizz3X6atTa5 root@dev" >> ~/.ssh/authorized_keys 
※↑で確認した「rsa.pub」の内容


chmod 600 ~/.ssh/authorized_keys
```

___________________________________________________
___________________________________________________
___________________________________________________

## インストール
```
sudo apt install openssh-server

これも？
sudo apt install openssh-client

＜debian：これでもOK？？
sudo apt install ssh
＜RedHat＞
dnf install openssh openssh-server

```

## 設定ファイル
 /etc/ssh/sshd_config 


## 基本設定
```
（ルートログインを禁止）
# Authentication:
PermitRootLogin no

（パスワード認証を禁止（公開鍵認証のみ））
PasswordAuthentication no
ChallengeResponseAuthentication no

RSAAuthentication yes
PubkeyAuthentication yes

Port 22（以外の値）
```

## 再起動（設定反映）
ubuntu 15 >= sudo systemctl restart ssh
ubuntu 14 <= sudo service ssh restart
CentOS 7  >= systemctl restart sshd.service
CentOS 6  <= service sshd restart
___________________
## 参考サイト
https://help.ubuntu.com/lts/serverguide/openssh-server.html.en  
　  
https://qiita.com/a_k0406/items/660e686285ead5ac93f4

