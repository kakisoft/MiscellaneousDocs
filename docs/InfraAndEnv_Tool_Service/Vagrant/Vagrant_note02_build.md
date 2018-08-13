### Boxの作成
<https://www.vagrantup.com/docs/cli/package.html>  
　  

現在稼働中の仮想マシンをBox化する場合、以下のコマンドを使用する。
```
vagrant package

vagrant package --output VM02.box
```
「package.box」というファイルが作成される。  
仮想マシンが起動中の場合、自動的にシャットダウンしてくれる。  


## 作成したBoxをリストに追加
```
vagrant box add <ボックス名> package.box

（例）
vagrant box add VM02 VM02.box
```
後は通常通り、vagrant init から。


