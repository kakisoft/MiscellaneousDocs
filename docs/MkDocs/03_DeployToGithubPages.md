## Github Pages へのデプロイ準備
```
mkdocs new sample01
cd sample01
mkdocs build
mkdocs serve

git init
git pull origin master
git remote add https://github.com/kakisoft/newRepositoryyyyyyy.git

※以下、最低１回、コマンドラインで実行しておく。
git add .
git commit -m "first commit"
git push -u origin master

以降、vsCodeから、通常使用できるようになる。

```

## デプロイ
```
mkdocs gh-deploy


（公開サイトのURLs）
https://kakisoft.github.io/newRepositoryyyyyyy/

```

GitHub Pages の設定などは特に不要。  
（勝手に「gh-page」ブランチが、公開設定となる。）  
・・・なんだけど、ちゃんと公開されなかったんで、settingでちゃんと設定した方がよさそう。


___________________________________________________________________________
___________________________________________________________________________
___________________________________________________________________________
___________________________________________________________________________
___________________________________________________________________________

作業は、masterブランチで行う。

## デプロイコマンド
```
mkdocs gh-deploy

※ gh-deploy ブランチのページが公開される。
```
gh-deployブランチに、「site」フォルダが作成される。  
（docsフォルダ以下のファイル（mkファイル）は、gh-deployブランチには作成されない。）




_________________________________
以下、勘違いノート。

## 全部込み（docsファイルの中身とか）で、githubに push
```
mkdocs serve
mkdocs gh-deploy
⇒push

※ deployのみを実行して pushすると、siteフォルダがクリアされるっぽい。
```




