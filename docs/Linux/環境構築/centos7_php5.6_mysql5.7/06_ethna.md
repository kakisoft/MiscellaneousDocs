## Ethna 2.6 
<http://ethna.jp/doc/install.html#install>
```
sudo pear channel-discover pear.ethna.jp
sudo pear install -a ethna/ethna

（アップデート）
sudo pear upgrade ethna/ethna
```
## バージョン確認
```
ethna -v
※アップデートしないと、ethnaコマンドが使えなかった。
```

Smarty も同時にインストールされてるっぽい。

### インストール時のメッセージ
```
[vagrant@localhost ~]$ sudo pear install -a ethna/ethna
WARNING: "pear/DB" is deprecated in favor of "pear/MDB2"
Could not download from "http://pear.ethna.jp/get/Ethna-2.5.0.tgz", cannot download "ethna/ethna" (Connection to `pear.ethna.jp:80' failed: php_network_getaddresses: getaddrinfo failed: Name or service not known)
Error: cannot download "ethna/Ethna"
downloading DB-1.9.2.tgz ...
Starting to download DB-1.9.2.tgz (133,795 bytes)
.............................done: 133,795 bytes
downloading Smarty-2.6.26.tgz ...
Starting to download Smarty-2.6.26.tgz (67,946 bytes)
...done: 67,946 bytes
downloading simpletest-1.1.0.tgz ...
Starting to download simpletest-1.1.0.tgz (289,405 bytes)
...done: 289,405 bytes
install ok: channel://pear.php.net/DB-1.9.2
install ok: channel://pear.ethna.jp/Smarty-2.6.26
install ok: channel://pear.ethna.jp/simpletest-1.1.0
```