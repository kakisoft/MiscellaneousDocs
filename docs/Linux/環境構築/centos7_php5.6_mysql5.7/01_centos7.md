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
Vagrantfileを以下のように修正。
```
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "1803.01"
end
```
その後、
```
vagrant up

（バージョン確認）
cat /etc/redhat-release
```


