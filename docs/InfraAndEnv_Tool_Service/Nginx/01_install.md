```
curl http://localhost/

http://localhost:8080/
```

## CentOS
Nginx を CentOS 7 にインストールする手順  
https://weblabo.oscasierra.net/nginx-centos7-install/  

root ユーザで実行
```
vi /etc/yum.repos.d/nginx.repo

[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1



ls -l /etc/yum.repos.d/
（nginx.repo が作成されている事を確認）


yum info nginx
yum install nginx



systemctl enable nginx
systemctl start nginx
```


## Amazon Linux
```
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx

sudo systemctl enable nginx
sudo systemctl start nginx
```

____________________________________________________________
## vi install
```
apt-get update
apt-get install -y vim
```

## ping install
```
apt-get update
apt-get install -y iputils-ping
```

____________________________________________________________
## Access
http://localhost:8000/


## PHP Accesscheck
```
ping php
```
____________________________________________________________

