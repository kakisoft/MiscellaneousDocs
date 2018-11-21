## SSL
![alt](SSL.png)

```
・SSH：公開鍵認証
・SSL：共通鍵認証

# SSH鍵生成
ssh-keygen -t rsa -C "sample@gmail.com"
　・id_rsa （秘密鍵）
　・id_rsa.pub （公開鍵）

-t アルゴリズム
-C コメント


## 公開鍵認証  
公開鍵で暗号化したファイルは、秘密鍵でしか復号できない。
秘密鍵で暗号化したファイルは、公開鍵でしか復号できない。

サーバに公開鍵を設置し、クライアントは秘密鍵を保持する
http://knowledge.sakura.ad.jp/beginner/3543/

## 共通鍵
クライアントとサーバ間で、共通を鍵を保持する

## パスフレーズ
パスワードの長い版。単語を繋ぎ合わせて作る的な意味合いを含む？

## OpenSSL
SSLとTLSの機能を実装したオープンソースライブラリ
```
_____________________________________________________________________
_____________________________________________________________________

## Windows
git bush で実行可。
```
ssh-keygen

Enter file in which to save the key (C:\Users\kakis/.ssh/id_rsa):
⇒ Enter
Enter passphrase (empty for no passphrase):
⇒ 省略可。そのまま Enterできる。
Enter same passphrase again:
⇒ 同上


C:\Users\kakis/.ssh/id_rsa)
といった場所に生成される。

＜生成されるファイル＞
id_rsa
id_rsa.pub

※秘密鍵と公開鍵。テキストエディタで開く事ができる。
　「----BEGIN RSA PRIVATE KEY-----」とか書いてある。


id_rsa.pub（公開鍵）を、ホスティング先にアップロード。
もしくは文字列をコピーして登録。


id_rsa が存在するフォルダにて sshコマンドを叩く場合、（↑のフォルダに id_rsaが存在している場合も？）
ssh ログイン時、-i を省略可。

```

