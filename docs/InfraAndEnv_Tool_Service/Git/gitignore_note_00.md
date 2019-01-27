gitignore

# 無視するファイルの登録方法

## project/.gitignore に登録
メンバー全員が無視するファイルを設定できるようにする場合、こちらを使う。  
　  
通常、```git add .gitignore```して、無視するファイルをバージョン管理に含める。  
そうすれば、プロジェクトを共有するメンバー全員が無視すべきファイルを設定できる。  
　  
.DS_Store とかは、ここにしといていいかもしんない。ざっくり使う場合は。d


## project/.git/info/exclude に登録
バージョン管理を含めずに無視するファイルを設定する。  
自分の環境に依存するファイルを設定するなら、ここ。


## config
```
git config --global core.excludesfile $HOME/.gitexclude と設定して、$HOME/.gitexclude に登録する
```
