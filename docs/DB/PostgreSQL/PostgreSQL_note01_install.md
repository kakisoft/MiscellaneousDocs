### インストール（Ubuntu）
```
sudo apt-get update
sudo apt-get install -y postgresql
```


## 参考サイト
https://qiita.com/kaitoii11/items/7acd24cce5315792931f    
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04    
http://ts0818.hatenablog.com/entry/2017/02/11/210104    

## インストール（CentOS 7）
https://qiita.com/uhooi/items/44ed9370740c7521dce4
```
# pgdg96リポジトリを追加する
$ sudo yum install -y https://yum.postgresql.org/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm

# PostgreSQLサーバーをインストールする
$ sudo yum install -y postgresql96-server postgresql96-contrib
```