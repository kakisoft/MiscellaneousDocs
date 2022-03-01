## インストール（Windows）
```
choco install pip

pip install mkdocs
※power shellでは上手く行かず。
```

## インストール（Cent OS）
```
sudo yum install python-pip
sudo pip install pip --upgrade
sudo pip install mkdocs

sudo pip install mkdocs-windmill
```

## インストール（Mac）
```
sudo easy_install pip
sudo pip install pip --upgrade
sudo pip install mkdocs

sudo pip install mkdocs-windmill


## こっちの方法でも。（Python3）
python3 -m pip install mkdocs
python3 -m pip install mkdocs-windmill
```

## プライグイン
```
pip install pygments
```

## テーマインストール
```
pip install --upgrade pip

pip install mkdocs-material
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

