## 起動エラー
```
docker: Error response from daemon: Conflict. The container name "/db" is already in use by container "a6（略）
```
プロセス終了
```
sudo docker ps -a
sudo docker rm -f <imageId>
```
