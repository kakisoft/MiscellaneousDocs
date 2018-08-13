
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