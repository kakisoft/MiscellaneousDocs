## Homebrew
https://brew.sh/
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Virtualbox
https://teratail.com/questions/107096
```
brew cask install virtualbox --verbose --debug
その後、
「システム環境設定」→「セキュリティとプライバシー」→「一般」
```

## VirtualBOXのインストール
```
brew cask install virtualbox
```
## ↑がエラーだった場合、こっちで。
```
brew cask install --force virtualbox
```

## 今はこっち。（cask がオプション扱いになった）
```
brew install ——cask -—force virtualbox
```

## Vagrant
```
brew cask install vagrant
```
### Vagrant : add CentOS
```
vagrant box add centos/7
vagrant init centos/7
vagrant ssh

  IP 指定時にエラーが発生した場合、virtualbox を一度アンインストールした後、再度インストール。
    brew cask uninstall virtualbox
    brew cask reinstall virtualbox
```

## アップデート
```
sudo yum -y update
sudo yum -y install git
sudo yum -y install wget

あとは環境構築用のリポジトリでも。
```

## Cyberduck
```
brew cask install cyberduck

    上段メニュー -> 環境設定 -> 「ブラウザ」タブ -> 「'.'で始まるファイルを表示」「ダブルクリックしたファイルを外部エディタで開く」
　                           「エディタ」タブ -> デフォルトのエディタを指定。チェックをON

＜接続＞
SFTP
192.168.33.10    21
vagrant
vagrant

鍵の場所は、「vagrant ssh-config」で確認。

上段メニューの「ブックマーク」 -> 新規ブックマーク
```

## PHP
```
php -S 192.168.33.10:8000
```




_____________
```
192.168.33.10
/Users/kaki/vagrant/centos/.vagrant/machines/default/virtualbox/private_key
```
