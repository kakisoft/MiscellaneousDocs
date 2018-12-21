## Windows
パーミッションエラー

## Ubunts 18
https://hub.docker.com/_/odoo/
```
docker pull odoo


sudo docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo -e POSTGRES_DB=postgres --name db postgres:10
sudo docker run -p 8069:8069 --name odoo --link db:db -t odoo
```
## 停止・起動
```
sudo docker stop odoo
sudo docker stop db


sudo docker start db
sudo docker start odoo
```

## 削除
```
sudo docker rm -f odoo
sudo docker rm -f db
```

## 起動エラー
```
docker: Error response from daemon: Conflict. The container name "/db" is already in use by container "a6（略）
```
プロセス終了
```
sudo docker ps -a
sudo docker rm -f <imageId>
```

## access
```
http://localhost:8069/web
```