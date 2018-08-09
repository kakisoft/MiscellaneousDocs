```
vagrant ssh
vagrant@127.0.0.1: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
```


## スナップショット
<https://weblabo.oscasierra.net/vagrant-snapshot/>


## vagrantでmountエラーの解決方法
<https://qiita.com/osamu1203/items/10e19c74c912d303ca0b>
```
sudo /etc/init.d/vboxadd setup
```


## Vagrantの共有フォルダをapacheの公開ディレクトリにしていると更新が反映されない問題 
<http://d.hatena.ne.jp/stealthinu/20160310/p1>
```
/etc/httpd/conf/httpd.conf

EnableMMAP off
EnableSendfile off
あらかじめ記述済みで、コメントアウトされている場合もある。
```


## Vagrantでゲストとホストのフォルダを共有する
<http://koltatt.net/programing/vagrant_dirsync/>
```
vagrant rsync
agrant rsync-auto
```


