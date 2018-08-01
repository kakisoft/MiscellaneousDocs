# Console
```
rails console
（rails c　でも可）
```
## コンソールコマンド
```
p = Post.new(title: 'title 1', body: 'body 1')
p.save
----------------
Post.create(title: 'title 2', body: 'body 2')
----------------
Post.all
```
quit

# SQLite

### コンソールログイン
```
rails db  
（rails dbconsoleでも可）
```
### テーブル一覧表示
```
.tables
```
### select
```
（例）
select * from posts;
```
### 終了
```
quit
```
# 初期データ登録
db/seeds.rb に記述。（以下、記述例）  
```rb
5.times do |i|
  Post.create(title:"title #{i}", body:"body #{i}")
end
```
記述後、以下を実行。
```
rails db:seed
```

## 初期化
```
rails db:migrate:reset
```
DB を drop した後、通常通りのマイグレート（db:migrate）が行われる。  
db/migrate/**.rb が古い順から全て実行される。  

```
rake db:reset
```
db/schema.rb からDBを作成。  
db/migrate/**.rb は使用されない。
