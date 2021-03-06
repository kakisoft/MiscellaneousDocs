```
・SSH：公開鍵認証
・SSL：共通鍵認証


## 公開鍵認証  
公開鍵で暗号化したファイルは、秘密鍵でしか復号できない。
秘密鍵で暗号化したファイルは、公開鍵でしか復号できない。

サーバに公開鍵を設置し、クライアントは秘密鍵を保持する
http://knowledge.sakura.ad.jp/beginner/3543/

## 共通鍵
クライアントとサーバ間で、共通を鍵を保持する


## OpenSSL
SSLとTLSの機能を実装したオープンソースライブラリ

```

## 拡張子
```
cer   中間証明書
crt   証明書
csr   証明書出すときに必要なもの
key   秘密鍵
```

## 電子証明書は
コンピュータの世界における「どこかの誰かが発行した身元証明書」。  
どこかの誰かに「こいつは大丈夫。俺が身元を保証すっから」と発行してもらった証明書。

## 認証局
↑の身元を保証してくれる立場の人。  
そして、「認証局自身の身元」も保証されていなければならない。

## 認証局の身元保証
２種類  

 1. 厳しい審査や世間の目にさらされることによって身元を保証される
 2. 他の認証局に保証してもらうことで身元が保証される


## ルート認証局
↑の「1」  
厳しい審査やあれやこれやの苦難を乗り越えることで、認証局自身が「自分は良い人ですよ～」と自己主張してOKな認証局となる。  
会社や社長が、世間から信頼されて要るかどうか。みたいなイメージ。

## 中間認証局
↑の「2」  
他の認証局に身元保証をしてもらう認証局。  
認証局に保証してもらうことで身元が保証される。  


## _
```
ルート認証局：自分で自分を身元保証OK
中間認証局：他の認証局に身元保証してもらう
```

## ルート証明書
ルート証明書はルート認証局自身が発行する身分証明書。


## _
```
【世の中】
　　|
　ルート認証局（ルート証明書を発行）
　　↓
　中間認証局（中間証明書を発行）
　　↓
　自分とこ
```

## 電子証明書（デジタル証明書）
ルート証明書 や 中間証明書


______________________________________________________________
## SSLサーバ証明書
公的認証機関（CA）から発行された電子証明書。  
SSLを導入する場合に必要になる。  
　  
通信の暗号化に必要な鍵を持っており、ブラウザとサーバ間で暗号化通信を行う。  
ドメインと、ドメインを所有する組織の身元情報も証明する。  
　  
要するに、SSLサーバ証明書があることで、
送信情報が暗号化されることを確認でき、安全に情報を送ることができる。  
　  　
レンタルサーバーでは、  
共用SSLを標準サービスとして、提供されてる場合が多い。  



## 共有SSL
レンタルサーバー会社で取得代行したもの。  
SSLサーバー証明書を、複数のユーザと使うことになる。  
　  
サーバー会社で発行したものなので、いくつかの制約があったりする。  

 * 身元保証の信頼性が取れない
 * 独自ドメインが使えない

など。



## 独自SSL
自分の持っているドメインに対して、SSL証明を行う。  
ECサイトや、重要な個人情報を扱うサイトでは、独自SSLを使うのがほとんど。

 * ドメイン認証型：DV（Domain Validation）
無料のもある。  
コーポレートサイトやブログ・メディアサイトなど。

 * 企業認証型：OV（Organization Validation）
おもに法人サイトで使用される。

 * EV認証型：EV（Extended Validation）
知名度のあるブランドサイトや銀行サイト。


## クイック認証SSL
グローバルサイン社の発行するドメイン認証タイプ(DV)のSSL証明書。


## Let's Encrypt
無料でSSL証明書を発行できる。


## CSR（ Certificate Signing Request ）
SSLサーバ証明書発行に必要なテキストデータ。  
SSL用の秘密鍵作成時に生成するデータで、公開鍵やコモンネーム（FQDN）、組織名、部署名等が含まれている。  
認証局は提供されたCSRと申し込み情報を元に内容を精査してSSLサーバー証明書を発行する。


## SNI（Server Name Indication）
SSL/TLSの拡張仕様の1つ。
これまで「1台のサーバ（グローバルIPアドレス）につきSSL証明書は1ドメイン」だったが、  
SNIを利用すれば、「1台のサーバで異なる証明書」を使い分けることができるようになる。（ホスト名に紐づく）

## SNI
virtualhost  
一つのIPアドレスと一つのTCPポートで、複数のWebサイトをホスティングする技術。  
HTTPリクエスト内で指定するドメイン名から、同じIPに対するアクセスをドメインごとに振り分ける機能。

<https://qiita.com/onokatio/items/434ce6c1d4fdcf3d07eb>


## 2way
「www.」を付けても付けなくてもアクセスできる仕組み。  
Subject Alternative Names(SANs)によるコモンネーム(CN)の別名機能を利用。


## 常時SSL
ウェブサイト内のすべてのページをSSL化すること。

## SANs（Subject Alternate Names）
サーバ証明書のCN（Common Name）の別名。いうか追加名。

サーバ証明書を買うと www.example.com など一つのホスト名がCNとして設定されたものが発行される。  
ブラウザ等はサブドメインまで含めて完全一致でこのホスト名をチェックするから、www2.exmaple.com や example.com なんかのホスト名でアクセスすると証明書エラーが出る。  
でも www.example.com と example.com はサイトの中身同じだしどっちでもアクセスできるようにしたい。

けど、その為に証明書2枚も買うのはもったないし設定も面倒…。といったケースに使用する。

要は一つの証明書の中に2つ以上のホスト名を列挙することが出来る機能。


## コモンネーム
<https://cspssl.jp/guide/commonname.php>
![alt](img/common-name.png)


## FQDN（Fully Qualified Domain Name）
省略してないドメイン名。

＜構成＞  
スキーム名 + ホスト名、サブドメイン名（省略可） + ドメイン名 + ポート番号（省略可）+ ファイルまでのパス + ファイル名
```
＜例＞

　http://（スキーム名）
　　　＋
　wa3.（ホスト名、サブドメイン名）
　　　＋
　i-3-i.info（ドメイン名）
　　　＋
　:80（ポート番号）
　　　＋
　/extension/（ファイルまでのパス）
　　　＋
　index.html（ファイル名）
```

## SPF (Sender Policy Framework)
電子メールの送信元ドメインが詐称されていないかを検査するための仕組み。


## 認証局を立ててぼろもうけしたいんですが＞無理な理由を理解しよう
<https://qiita.com/kawaz/items/f90810b9ea823b6556a8>


## mod_ssl
apache モジュール

_________________________________________________
## 共有SSLと独自SSLの違い！ sslサーバ証明書とは
<https://www.nkshopping.biz/>


## 【無料SSL入門】「Let’s Encrypt」とは？設定で挫折しない！使い方解説
<https://www.kagoya.jp/howto/webhomepage/lets-encrypt/>

_________________________________________________
## SSL
![alt](img/SSL.png)

_________________________________________________
## 証明書確認
```
cert www.kakiflow.com kakiflow.com


サブドメインが複数存在するかどうかは、SANs の内容を見る。
```

