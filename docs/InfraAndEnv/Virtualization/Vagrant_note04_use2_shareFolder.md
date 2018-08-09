#### 共有フォルダの設定
ゲストの```/vagrant```ディレクトリは、ホストのVagrantfileが存在するディレクトリと共有されている。  
が、素の状態では仮想マシン起動時に rsync で同期するだけのようで、  
リアルタイムで同期させるには、VitualBoxの仮想マシンに Guest Addtions が必要みたい。（プラグイン）

## ホスト⇔ゲスト　共有フォルダ設定

### Vagrantファイル
設定例
```
# config.vm.synced_folder {host_path}, {guest_path}, option...

config.vm.synced_folder "./shared", "/home/vagrant/shared", type: "virtualbox"
※ホスト側に「shared」というフォルダを作成しています。
```

### SELINUX 設定
ゲスト側にて、以下を設定
```
/etc/selinux/config
の内容を変更。
SELINUX=enforcing　→　SELINUX=disabled

※再起動後に有効化
getenforce
```

### プラグインをインストール
```
vagrant plugin install vagrant-winnfsd
vagrant plugin install vagrant-vbguest

その後
vagrant vbguest
※ゲスト起動時に、ホストから実行する
```




__________________________________________
__________________________________________
## 以下、雑記

### エラー発生時
```
Vagrant was unable to mount VirtualBox shared folders.
```


ゲストの/vagrantディレクトリは、ホストのVagrantfileが存在するディレクトリと共有されている。
```
sudo rm -rf /var/www/html/
sudo ln -fs /vagrant /var/www/html
```
_____________________________
## 参考サイト
##### Vagrantで共有フォルダの内容がリアルタイム同期されない件
<https://qiita.com/sudachi808/items/edc304b3ee6c1436b0fd>

##### Cannot configure shared folders on Windows 10 #9041
<https://github.com/hashicorp/vagrant/issues/9041#issuecomment-402301714>

##### Updated CentOS Vagrant Images Available (v1708.01)
<https://seven.centos.org/2017/09/updated-centos-vagrant-images-available-v1708-01/>
