## CentOS 7
```
『epel download』で検索。（EPEL）
右クリック→リンク先のアドレスをコピー

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -Uvh epel-release-latest-7.noarch.rpm
sudo yum -y install ansible
ansible --version
```


## mac
```
（パッケージを調べる）
brew search ansible

（インストール例）
brew install ansible
```
