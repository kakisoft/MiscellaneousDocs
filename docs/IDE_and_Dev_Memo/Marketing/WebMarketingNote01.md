MarketingNote

## ITP (Intelligent Tracking Prevention)
Safari 11.0～　のトラッキング防止機能。  
Cookieの有効期限を極端に短くすることでブラウザ上でのユーザー行動の追跡を阻止する。  
サイトをまたいだトラッキングを防止する仕組み。  


## ITP対応プログラム
Safariに追加されたトラッキング防止機能（ITP）に影響を受けない広告計測に対応しているプログラム。  


## トラッキング
特定のユーザーが、サイト内でどこを閲覧しているのかを追跡、分析すること。  
Cookieを見る。（トラッキング・クッキーとも。）  


## トラッキングタグ
トラッキングコード、ビーコンタグ。  
ウェブビーコン型アクセス解析ツールにおいて、計測対象サイトのページ(HTML)にJavaScriptで記述されたタグのこと。  


## トラッキングコード
アクセス解析のために、ホームページのHTMLファイルなどに設置するコードのこと。  
「Googleアナリティクスタグ」「トラッキングID」とも呼ばれることがある。  
<https://seolaboratory.jp/55718/>  


## A/B テスト
ある特定の期間にページの一部分を2パターン用意して、どちらがより効果の高い成果を出せるのかを検証すること。


## コンバージョン率（成約率、コンバージョンレート、CVR）
　  
　　購入者 / 訪問者 = コンバージョン率  
　  
Webサイトの目標に達した数を、目標に達する最初の段階に入った数で割った割合のこと。   
インターネット広告やECサイトで、効率を計るために用いる。


## コンバージョン
マーケティングの分野では、Webサイトにおける最終的な成果のことを指す。  
ECサイトなら、商品の購入がWebサイト上におけるコンバージョン。（コンバージョン率で指標を表したり）  
他にも、会員登録や資料請求がコンバージョンだったり。  


## コンバージョンタグ
インターネット広告の成果を確認するための設定の１つ。  
例えば、ショッピングカートの最後のページに、 コンバージョンタグを運営者自身が組み込む。  
（このタグを設置したページが成果地点（コンバージョン地点）として認識されることになる。）  
このタグを組み込んでおかないと、 広告の成果を知ることが出来ない。  


## CVタグ
コンバージョンタグ


## コンバージョントラッキング
GoogleAnalyticsの機能？  

広告をクリックしたユーザーのその後の行動（商品を購入した、ニュースレターに登録した、電話で問い合わせをした、アプリをダウンロードしたなど）を把握できます。  

コンバージョン トラッキングを利用すると、広告のクリックが商品購入、申し込み、資料請求といった成果にどの程度つながっているか調べることができます。    



## GTM（Google Tab Manager）
Googleアナリティクスや、広告タグ、リターゲティングタグなどを始めとした、タグやスクリプトを、  
管理画面にて一括で管理できるGoogleが無料で提供しているツール。  
Googleでは「タグマネージャー」ではなく「マネージャ」と表記されている。  
<https://ferret-plus.com/10450>  
<https://www.e-n-a.jp/archives/4433>  



## ITP対策
<http://code-a.net/vs-itp/>

### 【対策方法1】広告主ドメインでCookieを付与する
広告主サイトで直接Cookieをつけることで、ITPにひっかかる「サイトをまたいだ計測」を回避する方法。  
Google Analyticsが採用している計測方法と同じ。  

ASPを経由する際にはCookieではなく、パラメーター（固有の識別番号のようなもの）をURLに付与。  
広告主サイトのLPに埋め込まれた専用のタグが、このパラメーターに反応してCookieを書き込むことで、ASPサイトを介さず広告主サイト内でCookie発行ができます。  

```
＜これまで：ASP が Cookie を付与する＞
広告掲載メディア -> ASP -> 広告主
　             [Cookie付与]

＜変更後：広告主ドメインで Cookie を付与する＞
広告掲載メディア -> ASP -> 広告主[Coockie付与]
　           [Cookie付与指示]    
```

LPにパラメーターに反応するタグの設置をする必要がある。  
対応が結構大変なことも。
今までのCookieと同程度の精度が期待できる。  


### 【対策方法2】ブラウザ推定技術「ブラウザフィンガープリント」を利用する
ユーザが使っているブラウザの種類、バージョン、ITPアドレスなどを組み合わせてプロファイルし、  
ユーザーを特定する「ブラウザフィンガープリント」の技術を用いる。

導入が簡単。


### 【対策方法3】セッションIDを使ったトラッキング
広告へ飛ぶリンクに固有のパラメーターを付与し、そのパラメーターをページ遷移ごとに引き継いでいくことでトラッキングする方法。

```
広告掲載メディア -> ASP -> 広告主 -> サンクスページ
　                    ↑
　              セッションごとに固有パラメータ付与

広告掲載メディア
　   ↓
　  ASP
　   ↓  ※セッションごとに固有パラメータ付与
　 広告主　　　　　https://xxx.com/パラメータ
　   ↓
サンクスページ　　　https://xxx.com/thanks-page/パラメータ
　                                             ↑
　                                       成果発生元の広告掲載メディアを特定
```

精度が高い反面、広告主サイトにパラメーター設置のための専用プログラミングが必要など、広告主さん側にかかる技術的な負担が大きい。


_____________________________________________________________________________
## NPS（ネットプロモータースコア）
https://webtan.impress.co.jp/e/2017/03/08/24303
企業やブランドに対してどれくらいの愛着や信頼があるか」を数値化する指標。  
推奨者の正味比率。
0点～10点の11段階で評価。

### ＜分類＞
 * 9～10点を付けた顧客　→「推奨者」
 * 7～8点　→「中立者」
 * 0～6点 → 「批判者」

回答者全体に占める推奨者の割合(％)から、批判者の割合(％)を引いた値がNPSのスコア。  
「業績との相関が高い」らしい。  
　
顧客満足度が高くても、リピートしてくれるとは限らず、ロイヤルカスタマーとも限らない（満足度が高くても、収益に直結するわけでない）という結果から編み出された手法だそうな。

_____________________________________________________________________________
## DMP（Data Management Platform）
マーケティング関連のデータを管理する何か。　　
何かバズワードくさい？


## パブリックDMP/オープンDMP（「DMP」といったら、通常これ。）
「○○な人に広告を打ちたい」  
という考え？


## プライベートDMP
自分たちが独自に集めたマーケティングデータを管理するもの。
『プライベートDMPに購買情報ファイルをアップロードするタスクを作成』とか。

