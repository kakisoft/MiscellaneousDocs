**Gatsby new 等のコマンドでリポジトリを作成する場合、Github にリポジトリを作成する時に、「README.md」を追加しない方がよさそう**  

## リモート追加
```
git init
git remote add origin https://github.com/kakisoft/test003.git
git pull origin master

※以下、最低１回、コマンドラインで実行しておく。
git add .
git commit -m "first commit"
git push -u origin master

以降、vsCodeから、通常使用できるようになる。
```


#### エラー１
```
warning: Pulling without specifying how to reconcile divergent branches is
discouraged. You can squelch this message by running one of the following
commands sometime before your next pull:

  git config pull.rebase false  # merge (the default strategy)
  git config pull.rebase true   # rebase
  git config pull.ff only       # fast-forward only

---------------------------------
→
git config pull.rebase false
など
---------------------------------
```
#### エラー２
```
fatal: refusing to merge unrelated histories
---------------------------------
→
git merge --allow-unrelated-histories origin/master
---------------------------------
```



## リモート追加： Visual Studio
```
━━━＜Visual Studio 2017＞━━
プロジェクト作成後
git remote add origin https://github.com/kakisoft/tmp01.git
git pull origin master
git merge --allow-unrelated-histories origin/master
git add .
git commit -m "first commit"
git push -u origin master

以降、Visual Studioから、コミット・プッシュが実行できる。
```

__________________________________________________________________
## 2018_note
```
## リモート登録（「work」という名称で登録）
git remote add work https://github.com/kakiq

## push「work」登録済み
git push work edit-function
```

