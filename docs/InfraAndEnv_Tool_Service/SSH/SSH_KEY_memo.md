# SSH鍵生成
```
ssh-keygen -t rsa -C "sample@gmail.com"
　・id_rsa （秘密鍵）
　・id_rsa.pub （公開鍵）

-t アルゴリズム
-C コメント
```

## 暗号強度を指定して鍵を作成（今はこっちが推奨？）
```
ssh-keygen -t rsa -b 4096 -C "sample@gmail.com"

# -t 暗号化方式を指定
# -b 暗号化強度を指定
# -C コメントを設定 

```

```
## 作成できたファイルを確認


## パスフレーズ
パスワードの長い版。単語を繋ぎ合わせて作る的な意味合いを含む？


## フィンガープリント
指紋。  
改ざんされてないか、確認するためのデータ。

______________________________________________________________________
______________________________________________________________________
## SSH Keysの確認
```
ls -al ~/.ssh
```

______________________________________________________________________
______________________________________________________________________
## GitHub に登録してある公開鍵を確認
```
https://github.com/${USERNAME}.keys
```

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

# GitHub への登録

## 登録方法
```
ssh-rsa AAAArareioaubar

・・・と、「ssh-ra」から始まる内容からコピー。
ではなく、


cat ~/.ssh/id_rsa.pub

ssh-rsa ＜公開鍵の内容＞ your_email@example.com


・・・らしいんだけど、こうなった。
```
Key is invalid. It must begin with 'ssh-ed25519', 'ssh-rsa', 'ssh-dss', 'ecdsa-sha2-nistp256', 'ecdsa-sha2-nistp384', or 'ecdsa-sha2-nistp521'. Check that you're copying the public half of the key
```
仕様が変わった？  
　  
試しに末尾の「 kaki@hogehoge」を削除して登録したら、  
```
Key is already in use
```
となった。（最初に、全体のものを登録していた）  
　  
### **（結論）**    
「全部含めてコピー」でおけ？   
　  
Githubに登録すると、メール送信される。  


## Github への ssh アクセス
```
ssh -T git@github.com


-T      Disable pseudo-tty allocation.


shell accessが許可されていない端末へsshアクセスする場合する。
githubはshell accessを許可していないため、PTY(pseudo-tty) allocation requestが通らずconnectionが閉じてしまう。

```


こっちでもいいそうな。
```
ssh -t git@github.com

Force pseudo-terminal allocation.  This can be used to execute arbitrary screen-based programs on a remote machine, which can be very useful, e.g. when implementing
menu services.  Multiple -t options force tty allocation, even if ssh has no local tty.
```

