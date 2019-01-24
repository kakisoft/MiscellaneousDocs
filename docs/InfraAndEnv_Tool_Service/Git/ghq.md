# ghq
```
git のリポジトリ保存場所を、決まった位置で管理してくれるツール。Go製。  
git cloneの代わりにghq get <repository URL>
```

## インストール
```
brew install ghq


または、
brew install go
sudo chown -R $(whoami) /usr/local/lib/pkgconfig

go get github.com/motemen/ghq
```


## 使用
```
ghq get <repository URL>
```
保存場所は、ホームディレクトリの「.ghq」となる。
