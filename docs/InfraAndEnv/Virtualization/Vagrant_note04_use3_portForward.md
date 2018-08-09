## ポートフォーワード
Vagrantファイル設定例
```
config.vm.network :forwarded_port, guest: 80, host: 8080
これで、ゲストの80ポートをホストの8080ポートに、フォワードしてくれる。
```