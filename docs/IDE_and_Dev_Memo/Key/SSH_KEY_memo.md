# SSH鍵生成
```
ssh-keygen -t rsa -C "sample@gmail.com"
　・id_rsa （秘密鍵）
　・id_rsa.pub （公開鍵）

-t アルゴリズム
-C コメント
```

## パスフレーズ
パスワードの長い版。単語を繋ぎ合わせて作る的な意味合いを含む？

______________________________________________________________________
______________________________________________________________________

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

______________________________________________________________________


## Linux
https://kakisoft.github.io/MiscellaneousDocs/Linux/ssh_key_nemo/



______________________________________________________________________


# _
```
ssh-rsa AAAArareioaubar

・・・と、「ssh-ra」から始まる内容からコピー。

```
