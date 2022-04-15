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

## Amazon Linux
インストールには、「Amazon Linux Extras」が必要らしい。  
https://qiita.com/1_ta/items/92dcfa6fa2a33cb11442  
https://aws.amazon.com/jp/amazon-linux-2/faqs/  
```
（コマンドが使用できるかチェック）
which amazon-linux-extras


（Ansible がリストに存在するかをチェック）
amazon-linux-extras | grep ansible

   -> [実行例]　0  ansible2                 available    \


（有効化）
sudo amazon-linux-extras enable ansible2


（インストール）
sudo yum install -y ansible
```


### バージョン確認
```
--version
```