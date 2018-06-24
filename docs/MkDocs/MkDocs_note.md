## インストール（Windows）
```
choco install pip

pip install mkdocs
※power shellでは上手く行かず。
```

## 操作
ひな形を作成（以下、「sample01」という名前で作成しています。）
```
mkdocs new sample01
```
ビルド（フォルダ移動後に実行。サイトに必要なファイルを生成。）
```
mkdocs build
```
サーバー起動（http://127.0.0.1:8000/）
```
mkdocs serve
```
リロードせずに編集内容が反映される。


## プライグイン
```
pip install pygments
```

## 追加テーマ
#### マテリアルデザインのテーマ
```
pip install mkdocs-material
```

## GitHubPages　にデプロイ
 1. GitHubにて、「gh-pages」というブランチを作成。
 2. clone
 3. ローカルにて、「mkdocs gh-deploy」を実行。
 4. 対象のリポジトリにて、Setting→GitHub Pagesを設定。対象ブランチは「gh-pages」とする

以降、ローカル側にて
```
mkdocs gh-deploy
```
実行でデプロイ。
　  
・・・ブランチ名は「gh-pages」でなきゃいけないのかと思ったが、何でもいいみたい。  
masterでも可。  

