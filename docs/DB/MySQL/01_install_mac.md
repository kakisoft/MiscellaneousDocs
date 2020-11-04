# MySQL：バージョンを指定してインストール（5.7 系）

## 検索
```
brew search mysql@5.7
```

## インストール
```
brew install mysql@5.7
```

```
（メッセージ）
If you need to have mysql@5.7 first in your PATH run:
  echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.bash_profile


コマンド実行。
echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.bash_profile

~/.bash_profile を開いて、↑の内容が追記されたか確認。

設定を反映
source ~/.bash_profile
```

## バージョン確認
```
mysql --version
```

## 起動
```
brew services start mysql@5.7
```

## 接続
```
mysql -uroot
```



