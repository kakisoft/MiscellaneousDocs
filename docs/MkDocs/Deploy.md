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


