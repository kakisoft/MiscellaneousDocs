### ルーティング確認コマンド
```
rails routes
```
  
  
### rootパス
rootパスは、```config/routes.rb```に記述。  
（例）
```rb
Rails.application.routes.draw do
  resources :posts
  root 'posts#index'  # rootアクセス時、postsコントローラーのindexアクションをコール
end
```
