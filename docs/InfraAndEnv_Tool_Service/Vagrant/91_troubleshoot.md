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
