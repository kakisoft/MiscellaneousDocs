## Vagrant
（参考）  
<https://app.vagrantup.com/centos/boxes/7/versions/1803.01>  
　  
centos/7 の suパスワードは「vagrant」
```
vagrant box add centos/7

mkdir centos7-4
cd centos7-4
vagrant init centos/7
```
## Vagrantfile編集

### バージョンを指定
```
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "1803.01"
end
```
### ポートリダイレクト設定
ゲストの80ポートをホストの8080ポートにフォワード。
```
config.vm.network :forwarded_port, guest: 80, host: 8080
```

その後、
```
vagrant up

（バージョン確認）
cat /etc/redhat-release
```

## ホスト⇔ゲスト　共有フォルダ設定
ゲスト側にて、以下を設定
```
/etc/selinux/config
の内容を変更。
SELINUX=enforcing　→　SELINUX=disabled

※再起動後に有効化
getenforce
```
### エラー発生時
```
Vagrant was unable to mount VirtualBox shared folders.
```
### プラグインをインストール
```
vagrant plugin install vagrant-vbguest

その後
vagrant vbguest
※ゲスト起動時に、ホストから実行する
```


ゲストの/vagrantディレクトリは、ホストのVagrantfileが存在するディレクトリと共有されている。
```
sudo rm -rf /var/www/html/
sudo ln -fs /vagrant /var/www/html
```

