## コンフィグ
```
git config --global user.name "kakisoft"
git config --global user.email "hoge@gmail.com"
git config --global color.ul true
git config -list  # 設定一覧を表示 

```

## falseにすると、コミット・チェックアウト時に改行コードの変換を行わない。
git config --global core.autocrlf false


## .DS_Store を除外（Mac）
```
git config --global core.excludesfile $HOME/.gitexclude
echo ".DS_Store" >> $HOME/.gitexclude
```

