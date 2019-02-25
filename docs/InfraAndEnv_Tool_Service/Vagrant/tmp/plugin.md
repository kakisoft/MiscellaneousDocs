## vagrant_properties.yml
Vagrantfile と同じ階層に配置

## Vagrantfile
```
  config.vm.define :user do |c|
    define_machine_spec(c)
    p = c.properties.named(:user)
    c.vm.network :private_network, ip: p.ip
    c.vm.hostname = p.hostname
    c.vm.synced_folder p.path, p.app_root, nfs: true

    c.vm.provision :chef_zero do |chef|
      _configure(chef)
      chef.add_role 'base'
      chef.add_role 'user'
    end
  end
```
