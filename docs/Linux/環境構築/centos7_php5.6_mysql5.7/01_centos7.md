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
### 一旦、起動しておく。
```
vagrant up


（バージョン確認）
cat /etc/redhat-release
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

### 終了
```
vagrant halt
```

### プラグインをインストール
```
vagrant plugin install vagrant-winnfsd
vagrant plugin install vagrant-vbguest

その後
vagrant vbguest
※ゲスト起動時に、ホストから実行する
```

### ポートリダイレクト設定
ゲストの80ポートをホストの8080ポートにフォワード。
```
config.vm.network :forwarded_port, guest: 80, host: 8080
```

_______________________________________________
```
素の状態では仮想マシン起動時に rsync で同期するだけのようで、
リアルタイムで同期させるには、VitualBoxの仮想マシンに Guest Addtions が必要みたい。（プラグイン）
```

## ホスト⇔ゲスト　共有フォルダ設定

### Vagrantファイル
設定例
```
※CentOS7の場合、カーネルを更新しておく。

（ドライブを共有しないなら、こっち？）
  config.vm.synced_folder "./shared", "/vagrant/shared", type: "virtualbox"

（ドライブを共有するなら、こっち？）
config.vm.synced_folder "./shared", "/vagrant/shared", type: "virtualbox", mount_options: ['dmode=777','fmode=777']


※パーミッション設定
chmod 777 /vagrant
```


_______________________________
【 CentOS7 】
### Guest Addtions 設定
#### １．カーネル更新
```
（kernel更新。ゲスト側で実行）
sudo yum update kernel -y
sudo yum install kernel-devel gcc -y
```

#### ２．Virtual Box設定（この設定は不要かも。）
```
（停止後、Virtual Boxを操作）
設定→ストレージ→光学ドライブの追加（空のままでOK）

vagrant up
```
