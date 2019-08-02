## iノード番号
ファイルやディレクトリに割り振られる重複しない番号。（ls -i  で確認可。）  
所有者や更新日時、ファイルサイズ等の「属性情報が書かれたデータ」


## シェルスクリプトの実行
権限付与。
ubuntuだと、tabで候補に出てこない。


## .bash_profile
ログイン時に1回、実行される。  
例えば、ターミナル.appを起動した際に読み込まれる。  
環境変数を設定する (export する変数)といった用途に使用する。  


## .bashrc
シェル起動時に１回、実行される。  
コマンドライン上でbashと叩くと再度.bashrcが読み込まれる。（.bash_profileは読まれない）  

用途：  
 * 環境変数でない変数を設定する (export しない変数)
 * エイリアスを定義する
 * シェル関数を定義する
 * コマンドライン補完の設定をする


!!! note
	設定が反映されない場合、
	bash でログインしなおしてみる。


<https://qiita.com/magicant/items/d3bb7ea1192e63fba850>  
## 設定が反映されないけど？
.bashrc に書いた設定が反映されないけど .bash_profile に書くといける場合は、 .bash_profile から .bashrc を読み込む処理が抜けてます。
```
# .bash_profile の最後に
test -r ~/.bashrc && . ~/.bashrc
```


## 【 source 】コマンド／【 . 】コマンド――シェルの設定を即座に反映させる
https://www.atmarkit.co.jp/ait/articles/1712/21/news015.html


## パス
```
printenv
echo $PATH
```

 * PATHの設定は .bash_profile か .bashrc で調整
 * PATHへの設定順序は /etc/paths 等で調整
 * PATHの設定を変えたら、ターミナルを再起動

（ /etc/paths.d 、/etc/manpaths.d 、 /etc/paths 、/etc/manpaths、など複数パターンあるらしい。）

```
kaki@PMAC465S ~/tmp/phpenv/ver01> which php
/usr/bin/php
```

## _
.bash_profile -> bashrcの順に実行される。
```
~/.bash_profile
~/.bashrc
```




