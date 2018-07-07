### ひな形作成
```
rails new myblog
```

### ローカルサーバ起動
```
rails server -b 192.168.33.10 -d
※ -d ・・・バックグラウンドで起動

http://192.168.33.10:3000/
```
[詳細](http://railsdoc.com/rails)


### モデル作成
```
rails g model Post title:string body:text
※単数形
```

### Migrate
```
rails db:migrate
```

### Controller
```
rails g controller Posts
※複数形
```
```
    create  app/controllers/posts_controller.rb
    create  app/views/posts
    create  app/helpers/posts_helper.rb
    create  app/assets/javascripts/posts.coffee
    create  app/assets/stylesheets/posts.scss
    create  test/controllers/posts_controller_test.rb

controllerディレクトリに、posts用のディレクトリが、
viewディレクトリに、posts用のディレクトリが作成される。
```

### ルーティング設定
どの URLにアクセスされた時、controllerのどのメソッドを呼ぶかを設定。
```rb
config/routes.rb に追記。
-----------------
Rails.application.routes.draw do
  resources :posts
end
```

### ルーティング設定の確認
```
rails routes
```
例
```
   Prefix Verb   URI Pattern               Controller#Action
----------------------------------------------------------------
    posts GET    /posts(.:format)          posts#index
          POST   /posts(.:format)          posts#create
 new_post GET    /posts/new(.:format)      posts#new
edit_post GET    /posts/:id/edit(.:format) posts#edit
     post GET    /posts/:id(.:format)      posts#show
          PATCH  /posts/:id(.:format)      posts#update
          PUT    /posts/:id(.:format)      posts#update
          DELETE /posts/:id(.:format)      posts#destroy

１行目・・・ /posts で get でアクセスしてきたら、 posts コントローラーの index アクションを実行。
```


