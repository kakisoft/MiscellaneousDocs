## ServerName
```
ServerNameディレクティブはApacheサーバが自分自身のホスト名を示す時に使われる名前を指定します。


＜書式＞
ServerName ホスト名[:ポート番号]
```

## DocumentRoot
```
ApacheはWWWサーバですのでクライアントからコンテンツのリクエストに対して対応するコンテンツを返します。それらのコンテンツを配置しておく場所を「DocumentRoot」で指定します。

＜書式＞
DocumentRoot ディレクトリ


ディレクトリは絶対パス、又はServerRootからの相対パスで指定します。最後にスラッシュ(/)は記述しないで下さい。

#
# DocumentRoot: The directory out of which you will serve your
# documents. By default, all requests are taken from this directory, but
# symbolic links and aliases may be used to point to other locations.
#
DocumentRoot "D:/Apache Group/Apache2.2/htdocs"
```

## Director
```
<Directory パス名（適用するディレクトリ）>
    ...
    設定ディレクティブ
    ...
</Directory>




<Directory /var/www/html> 
    AllowOverride All
  　Options FollowSymLinks
</Directory>


AllowOverride ALL　・・・.htaccessを有効にする
AllowOverride None ・・・.htaccessを無効にする
Options FollowSymLinks　・・・　シンボリックリンクのリンク先を Apache がたどれるようにします。

```

## Alias 
```
Alias リクエストのURLパス 実際のディレクトリ


Alias /alias /var/www/html/alias

test.comにアクセス　      ⇒　/var/www/html/test/index.html
test.com/aliasにアクセス　⇒　/var/www/html/alias/index.html
```


## 再起動
```
systemctl restart httpd.service

https://www.server-memo.net/centos-settings/centos7/service-start.html
```
