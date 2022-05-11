## SSH　ログイン
```
ssh -i <AccessKey> UserName@<IPアドレス>  [-p <ポート番号>]  

※鍵の権限を変えておく
chmod 600 <AccessKey>

（例）
ssh -i ~/.ssh/kaki-stg-key.pem ec2-user@10.125.547.124 -p 22
```

## コンフィグを設定して接続先を登録
```
vi ~/.ssh/config

（例）
Host web
 HostName 192.168.43.52
Host db
 HostName 192.168.43.53
```
```
chmod 600 ~/.ssh/config
ssh-keygen -t rsa
（Enter→Enter）
```


### ssh-copy-id コマンドで公開鍵を渡す
```
ssh-copy-id web
ssh web
ssh-copy-id db
ssh db
```
（Yes）でメッセージ送り


### ~/.ssh/config （コンフィグ例）
トンネル可能。鍵を指定できる。
```
Host sample01-prd-bastion
   HostName 51.166.196.132
   User ec2-user
   Port 22
   ServerAliveInterval 60
   IdentityFile ~/.ssh/sample01-prd-key.pem
Host sample01-prd1
   HostName 172.30.1.51
   User ec2-user
   ProxyCommand ssh sample01-prd-bastion -W %h:%p
   IdentityFile ~/.ssh/sample01-prd-key.pem
Host sample01-prd2
   HostName 172.30.1.52
   User ec2-user
   ProxyCommand ssh sample01-prd-bastion -W %h:%p
   IdentityFile ~/.ssh/sample01-prd-key.pem
```
上記を設定すると、以下のコマンドで ssh ログインできる。

```
ssh sample01-prd-bastion
ssh sample01-prd1
ssh sample01-prd2
```


## SSH鍵生成
```
ssh-keygen -t rsa -C "sample@gmail.com"
　・id_rsa （秘密鍵）
　・id_rsa.pub （公開鍵）

-t アルゴリズム
-C コメント
```

## 暗号強度を指定して鍵を作成（今はこっちが推奨？）
```
ssh-keygen -t rsa -b 4096 -C "kakisttab@gmail.com"

# -t 暗号化方式を指定
# -b 暗号化強度を指定
# -C コメントを設定 

```

## パスフレーズ
パスワードの長い版。単語を繋ぎ合わせて作る的な意味合いを含む？


## フィンガープリント
指紋。  
改ざんされてないか、確認するためのデータ。

______________________________________________________________________
______________________________________________________________________
## （作成された）SSH Keysの確認
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
## Mac
```
ssh-keygen


ls -la ~/.ssh/
```

______________________________________________________________________


## Linux
https://kakisoft.github.io/MiscellaneousDocs/Linux/ssh_key_nemo/



______________________________________________________________________

# GitHub への登録

## クリップボードにコピー
```
pbcopy < ~/.ssh/id_rsa.pub
```

## 登録方法
 1. GitHubにログイン --> Settings
 2. 左メニュー「SSH and GPG keys」
 3. New SSH key
 4. Titleに識別できる文字列を入力
 5. Bodyに先ほどクリップボードに入れた値をペースト
 6. Add Key


 その後、ターミナルで以下を実行。  
 ```
 ssh -T git@github.com
 ```

## VSCode
その後、VSCodeからアクセスすると、トークン発行画面が起動する。  
発行されたトークンをコピーし、VSCode の左下あたりに出てくる「Auth xxx（だったと思う）」をクリックし、トークンを入力。   


