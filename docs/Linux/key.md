# 鍵について  ssh

```
vi ~/.ssh/config

（例）
Host web
 HostName 192.168.43.52
Host db
 HostName 192.168.43.53
```
```
chmod 600 ~/.ssh/config
ssh-keygen -t rsa
（Enter→Enter）

ssh-copy-id web
（Yes）

ssh web
ssh-copy-id db
ssh db
```

_________________________________________________

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
