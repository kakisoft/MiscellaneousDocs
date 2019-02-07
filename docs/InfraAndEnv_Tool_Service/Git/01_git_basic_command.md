```
【公式サイト】
https://git-scm.com/

メモ
http://kakistamp.hatenadiary.jp/entry/2017/04/17/032953

## 用語
・作業ツリー
実際い利用者が編集するファイル。チェックアウトにより他のブランチに切り替えたり、特定のコミット状態に戻したりする。


・インデックス
作業ツリーの変更点を登録する一時領域。
作業ツリーでの変更点を、add により、インデックスに登録する。
登録された変更点は、commit によりローカルリポジトリに反映される。


##　ヘルプ
git <コマンド> --help
git <コマンド> -h
git help <コマンド>


## ユーザ名とパスワードを指定してclone
git clone https://username:password@github.com/kakisoft/tmp001.git
パスワードは省略可。（ダイアログが出る）
何回かミスると、一定時間ダイアログは出ない？（not found扱い）
※リポジトリの前に、usernameを記述。


## clone 最新の履歴のみ 
git clone --depth 1 https://github.com/redmine/redmine.git


## clone バージョン指定
git clone -b 10.0 https://github.com/odoo/odoo.git


## 用語など
HEAD      最新コミットの目印（現在使用しているブランチの先頭）
HEAD~　　　ヘッドの１つ前
HEAD~~　　 ヘッドの２つ前
HEAD~2　　 ヘッドの２つ前
HEAD^2     ヘッドの２人目の親
origin     clone元のリモートリポジトリ
upstream   作業しているブランチの上流


## メモ
pull     fetch と merge をまとめて実行。
fetch    リモートブランチ→（ローカルの）リモート追跡ブランチ　の取得
merge    （ローカルの）リモート追跡ブランチ→ローカルブランチ　の取得
merge    ブランチのマージ（masterにて実行。ブランチをmasterに統合。）　・・・mergeには２種類あるの？


# 初期化
git init
git init --bare  #共有リポジトリにする場合にはこのオプションをつけた方がいい？
ベアリポジトリ：ワークツリーを持たず、チェックアウト、マージができないリポジトリ。


## プッシュ（リモートリポジトリへ反映）
git push <name> <branch> 
git push origin master   #originに向かって、masterの内容を突っ込む
または、
git push -u origin master


## git push origin master の意味は？
push = アップロード
origin = リモートのサーバ名
master = デフォルトのブランチ名 (svnでのtrunkと同じ)

「ローカルのコードを、originというリモートサーバに対してアップロード。指定するブランチはmaster。」
masterをpushするときは"-u"は不要。
ローカルのブランチhogeをリモートの同名ブランチhogeにpushしたいときも"-u"は不要。

[-u | --set-upstream]
-uと--set-upstreamは同じ。

## git remote add origin git@github.com:reponame/sample.git
URLに"origin"という短縮名を付ける


## git pullについて
git fecth + git merge 
## git pull --rebase
git fetch + git rebase



## プル
git pull origin master

## リモートリポジトリ削除
git remote rm origin




## ログ
git log
git log --oneline
git log -p         #変更された場所も見る
git log --stat      #変更されたファイルの一覧
git log --oneline --graph --all  ## ツリー表示
git log -p public_html/js/common/components.min.js


## 状態確認
git status


## 差分チェック
git diff           #ワーキングエリアとステージングエリアの差分
git diff --cashed  #ステージングエリアとリポジトリの差分


## リセット
git reset --hard HEAD
git reset --hard HEAD^
git reset --hard <ID>


## 直前のコミットを取り消し
git reset --hard HEAD^

--mixed  インデックス登録を取り消す。デフォルトはこれ。
--hard   作業ツリーもインデックスも吐きして、指定したコミットの状態とする。
--soft   コミットだけを取り消す。作業ツリーもインデックスも現在の状態のまま。コミットのやり直しをしたい時に使用する。


Git History リロード。


## ブランチ
git branch                 #ブランチ一覧
git checkout <ブランチ名>   #ブランチ切り替え
git merge <ブランチ名>      #マージ（あらかじめmasterに切り替え）
git branch -d <ブランチ名>  #ブランチ削除


## コンフリクト
<<<<<<< HEAD
eee
=======
add line
>>>>>>> hogehoge
git commit -m "conflict fixed"


## 削除
git rm [削除したいファイル]
git rm -r [削除したいディレクトリ]
git rm -cached [削除したいファイル]


## タグ
git tag               #タグ一覧
git tag <タグ名>       #最新のコミットにタグ付け
git tag <タグ名> <ID>  #IDのコミットにタグ付け
git tag -d <タグ名>    #タグ削除


## コミットの内容確認
git show <タグ名>  #IDでも可


## エイリアス
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.br branch
git config --global alias.ci commit
git config -l    #リストアップ


```