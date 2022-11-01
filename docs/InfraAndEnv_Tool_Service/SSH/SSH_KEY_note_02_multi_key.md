# SSH メモ2 ：ローカルに複数キーが存在する場合

## キー作成
※カレントディレクトリに作成される
```
ssh-keygen -f "id_rsa_multi"
```

## 公開鍵を登録
GitHub 等に公開鍵を登録


## コンフィグ追加
GitHub の URL から抽出。  
「github.com/YamadaTaro」のようにスラッシュ区切りではなく、「.」で区切る。

### ~/.ssh/config
```
Host github.com.sample-inc
  HostName github.com
  User YamadaTaro
  Port 22
  IdentityFile ~/.ssh/id_rsa_multi
  TCPKeepAlive yes
  IdentitiesOnly yes

Host github.com.YamadaTaro
  HostName github.com
  User YamadaTaro
  Port 22
  IdentityFile ~/.ssh/id_rsa_multi
  TCPKeepAlive yes
  IdentitiesOnly yes
```

## 疎通確認
```
ssh -T git@github.com.YamadaTaro
ssh -T git@github.com.sample-inc
```

メッセージ
```
PS C:\Users\kakis> ssh -T git@github.com.YamadaTaro
Hi YamadaTaro! You've successfully authenticated, but GitHub does not provide shell access.

PS C:\Users\kakis> ssh -T git@github.com.sample-inc
Hi YamadaTaro! You've successfully authenticated, but GitHub does not provide shell access.
```

## クローン
ユーザ名は、該当リポジトリのユーザ名となる。  
YamadaTaro ではNG
```
git clone GitHubのURL:ユーザ名/リポジトリ名


（例）
git clone git@github.com.sample-inc:sample-inc/meocloud.git
```

