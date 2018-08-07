```
rakeコマンドがRails 5ではrailsコマンドで実行できるようになっている。

ヘルパー・・・viewで使えるメソッド
===================================
rails new mymemo
rails g scaffold Memo title:string body:text
rails db:migrate

===================================
rails new myblog
rails db:migrate


【model】
rails g model Post title:string body:text
rails c  # （consoleでも可）
＜↓↓以下、コンソール↓↓＞
p = Post.new(title: 'title1', body:'body1')
p.save
Post.create(title:'title2', body:'body2')  #=> newとsaveを同時に
Post.all  #=> 登録データ確認
quit
＜↑↑コンソールここまで↑↑＞
-----------------------------------
## 初期化
rails db:migrate:reset

-----------------------------------

rails g controller Posts
confit/routes.rb にルーティングを記述。
（例）
```
  resources :posts
```
その後、app/controllers に、処理を記述。
（例）
```
＜posts_controller.rb＞
  def index
    @posts = Post.all.order(created_at: 'desc')
  end
```

【view】
Postsコントローラのindexアクションに対応するviewは、
app/views/index.html.erb
（例）
```
<h2>My Posts</h2>
<ul>
<% @posts.each do |post| %>
<li><%= post.title %></li>
<% end %>
</ul>
```

body以外のソース（ヘッダとかタイトルとか）は、
views/layouts/application.html.rb
にて定義されている。
body部分は、<%= yield %>

アプリ全体に適用される cssファイルは、
app/assets/stylesheets/application.css


link_to <リンク先名>, <リンク先>
リンク先は、「rails routes」で出てくる Prefixに、「_path」を付けた値。
（例）
link_to post.title, post_path(post.id)
link_to post.title, post_path(post)


posts_controller.rb
```
  def show
    @post = Post.find(params[:id])  # ※引数の理由は、ルーティングで「:id」となっているから。
  end  
```
その後、app/views/posts/show.html.erb を作成。

===================================
【ロゴ】
app\assets\images に、画像を配置。（logo.png 等）
その後、views/layouts/application.html.rb 等に記述。
<h1><%= image_tag "logo.png" %></h1>

cssを適用する場合、こんな感じ。
<%= image_tag "logo.png" , class: "logo" %>
app/assets/stylesheets/application.css に記述。
```
.logo {
    width: 60px;
    height: 50px;
}
```
ロゴにリンクを張る。（例：root）
<%= link_to image_tag("logo.png" , class: "logo"), root_path %>
root_pathでなく、他のパスにしたい場合、rails routes 等で確認。Prefixに「_path」を付けた値を設定。

===================================
・app
・config
・db


```