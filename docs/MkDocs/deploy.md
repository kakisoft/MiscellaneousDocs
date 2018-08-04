## デプロイコマンド
```
mkdocs gh-deploy

※ gh-deploy ブランチ
```

## 全部込み（docsファイルの中身とか）で、githubに push
```
mkdocs serve
mkdocs gh-deploy
⇒push

※ deployのみを実行して pushすると、siteフォルダがクリアされるっぽい。
```