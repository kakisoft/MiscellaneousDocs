# DockerでRuby on Railsの開発をしよう
<https://qiita.com/saitoeku3/items/b1aa2ae143624e551aea>

_____________________________________________________________________________

## Dockerfileについて
<https://qiita.com/tanan/items/e79a5dc1b54ca830ac21>

_____________________________________________________________________________

# _
```
docker-compose run web bundle exec rails new . --force --database=mysql --skip-bundle

docker-compose build

docker-compose up -d
 -> localhost:3000

```

_____________________________________________________________________________

## Dockerfile

|  コマンド  |　　　　　　　　　　　　　意味                             |
|:----------|:----------------------------------------------------|
|  FROM     |  ベースとなるDockerイメージを指定                        |
|  ENV      |  環境変数を設定                                        |
|  RUN      |  shellの実行を行う                                     |
|  WORKDIR  |  起点となるディレクトリを設定　相対パスを使うときに起点になる  |
|  ADD      |  ファイル、ディレクトリなどをコンテナの指定されたパスにコピー  |


## docker-compose.yml

### web

|  コマンド    |  意味                                                                                                              |
|:------------|:------------------------------------------------------------------------------------------------------------------|
|  build      |  コンテナを構築するDockerfileがあるディレクトリを指定                                                                    |
|  ports      |  ポートの番号を指定                                                                                                  |
|  command    |  コンテナをビルドしたときに実行するコマンド                                                                              |
|  volumes    |  ホスト上のプロジェクト用のディレクトリを、コンテナ内の /myapp にマウントし、イメージを再構築しなくてもコードの変更が行えるようにする  |
|  depens_on  |  リンクするサービス（ここではdb）                                                                                      |

### db

|  コマンド      |  意味                                                   |
|:--------------|:-------------------------------------------------------|
|  image        |  データベースとして必要なイメージを指定　ない場合はpullしてくる  |
|  environment  |  環境変数を追加（ここではMySQLのパスワードを設定）            |
|  ports        |  webとほぼ同様                                           |
|  volumes      |  webとほぼ同様　                                         |


## よく使うコマンド：Docker
```
# 今あるイメージを確認
docker images

# イメージの削除
docker rmi image_id

# コンテナの確認（-aなしだと起動中のコンテナのみ）
docker ps -a

# コンテナの削除
docker rm container_id
```

## よく使うコマンド：Docker Compose
```
# コンテナをビルド
docker-compose build

# コンテナの起動
docker-compose start

# コンテナの作成＆起動
docker-compose up

# コンテナの停止
docker-compose stop

# コンテナの停止＆削除
docker-compose down

# bundle installを実行 うまくいかないかも？
docker-compose exec web bundle install

# db関係（例）
docker-compose exec web rails db:create

# railsコマンド（例）
docker-compose exec web rails g controller controller_name
```

