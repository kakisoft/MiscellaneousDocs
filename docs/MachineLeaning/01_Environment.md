## 【決定版】MacでPythonを使って『機械学習』を学ぶための環境構築
https://qiita.com/yoshizaki_kkgk/items/4663148a2b3ca078ddbc

```
which python3

brew install python3

which pip3


python3 --version


pip3 install numpy             # 線形代数
pip3 install scipy             # 数式処理
pip3 install matplotlib        # 描画 
pip3 install pandas            # データ操作

pip3 install scikit-learn      # 分類や予測のためのモデルが詰まった機械学習用パッケージ。ほぼデファクト。
pip3 install chainer           # ディープラーニング（NN）を実装する上で有名な国産ライブラリ。Tensorflowと並んで人気
pip3 install jupyter           # お手軽にPythonを実行できる環境。動作確認におすすめ。


```

________________________________________________________________________
________________________________________________________________________
### エラー出た
```
brew cask install python3

brew install python3      ↓
```

### エラーメッセージ
```
uskaki301-3:~ kaki$ brew install python3
Updating Homebrew...
==> Auto-updated Homebrew!
Updated 1 tap (homebrew/cask).
No changes to formulae.

Error: The following directories are not writable by your user:
/usr/local/lib/pkgconfig

You should change the ownership of these directories to your user.
  sudo chown -R $(whoami) /usr/local/lib/pkgconfig

And make sure that your user has write permission.
  chmod u+w /usr/local/lib/pkgconfig
```

### 実行
```
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
```


