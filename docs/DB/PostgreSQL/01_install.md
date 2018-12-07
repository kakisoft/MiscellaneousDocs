### インストール（ubuntu）
```
sudo apt-get update
sudo apt-get install -y postgresql
```


## 参考サイト
https://qiita.com/kaitoii11/items/7acd24cce5315792931f    
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04    
http://ts0818.hatenablog.com/entry/2017/02/11/210104    


### x
```
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
sudo apt-get update
sudo apt-get install postgresql-9.6 postgresql-client-9.6 -y --allow-unauthenticated
sudo su - postgres -c "createuser --createdb --no-createrole --no-superuser --pwprompt odoo"
```