## 複数VM起動
Vagrantファイル設定例  
（host, web, db という名称）
```
  config.vm.define "host" do |node|
    node.vm.box = "centos/7"
    node.vm.hostname = "host"
    node.vm.network :private_network, ip: "192.168.43.51"
  end

  config.vm.define "web" do |node|
  node.vm.box = "centos/7"
    node.vm.hostname = "web"
    node.vm.network :private_network, ip: "192.168.43.52"
  end

  config.vm.define "db" do |node|
  node.vm.box = "centos/7"
    node.vm.hostname = "db"
    node.vm.network :private_network, ip: "192.168.43.53"
  end
```

## 確認
```
vagrant status
``@


