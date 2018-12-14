## Windows
パーミッションエラー

## Ubunts 18
https://hub.docker.com/_/odoo/
```
docker pull odoo


sudo docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:10
sudo docker run -p 8069:8069 --name odoo --link db:db -t odoo
```


## 起動エラー
```
docker: Error response from daemon: Conflict. The container name "/db" is already in use by container "a6
```
プロセス終了
```
sudo docker ps
sudo docker rmi -f <imageId>
```
