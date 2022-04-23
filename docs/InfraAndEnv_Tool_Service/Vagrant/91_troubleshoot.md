## vagrant ssh ログイン時に `encode' エラー

### エラーメッセージ
```
C:/HashiCorp/Vagrant/embedded/gems/2.1.2/gems/vagrant-2.1.2/lib/vagrant/util/io.rb:32:in `encode': 
  incomplete "\x82" on Windows-31J (Encoding::InvalidByteSequenceError)

（以下略）
```


### 解決策
<https://qiita.com/mokuo/items/fb18713c4f0a19d9c48e>
```
C:/HashiCorp/Vagrant/embedded/gems/gems/vagrant-1.8.6/lib/vagrant/util/ にある、io.rb の32行目を編集。

C:/HashiCorp/Vagrant/embedded/gems/2.1.2/gems/vagrant-2.1.2/lib/vagrant/util/io.rb:32
C:/HashiCorp/Vagrant/embedded/gems/2.1.2/gems/vagrant-2.1.2/lib/vagrant/util/

【 修正前 】
data << io.readpartial(READ_CHUNK_SIZE).encode("UTF-8",       Encoding.default_external)

【 修正後 】
data << io.readpartial(READ_CHUNK_SIZE).encode("Windows-31J", Encoding.default_external)
```


____________________________________________________________________
## vagrant up 時にエラー（macOS Big Sur）

### エラーメッセージ
```
==> default: Booting VM...
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.

Command: ["startvm", "53425969-a53b-43ea-b566-ace68e90b44b", "--type", "headless"]

Stderr: VBoxManage: error: The virtual machine 'vagrant_default_1650730233117_51806' has terminated unexpectedly during startup with exit code 1 (0x1)
VBoxManage: error: Details: code NS_ERROR_FAILURE (0x80004005), component MachineWrap, interface IMachine
```

### 解決策
システム環境設定 -> セキュリティとプライバシー -> 左下「変更するにはカギをクリックします」 -> App Store と確認済みの開発元からのアプリケーションを許可  

にチェックを入れる。  

その後、再起動。  


