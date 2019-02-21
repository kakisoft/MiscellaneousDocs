## ロードされているモジュールの確認
```
/etc/httpd/conf.modules.d/00-base.conf

vim /etc/httpd/conf.modules.d/00-base.conf
```

## ロードされているモジュールの確認
```
apachectl -M
httpd -M
```

## mod_php
これが無いと、apache が phpとして認識しない。  
php7 からは、「php7_module」となった？
```
/etc/httpd/conf.d/php.conf
```

## mod_cache
キャッシュの扱い方を設定するモジュール

## mod_disk_cache
どのキャッシュをどこへ保存するかを設定するモジュール

## mod_expires
キャッシュの期限を設定するモジュール。  
どんなディストリビューションのものでも最初から有効。
```

以下の記述があれば、有効。
LoadModule expires_module modules/mod_expires.so
```

## mod_status
どのぐらいリソースを消費しているか、Apacheの稼働ステータスをモニタ。

## mod_ssl
HTTPS 化に必要。
______________________________________________________________
### 参考サイト
<https://www.ritolab.com/entry/4>  
```
サーバーサイドのキャッシュが正しく行われているかどうかは、 CacheRootディレクティブで指定した場所を見てキャッシュが生成されていれば確認できます。

キャッシュの有効期限に関しては慎重に決めてください。公開しているページに 一度キャッシュを設定すると、クライアントには有効期限に達するまでキャッシュが表示されます。
更新される頻度などと相談して上手に調整していく事が大切です。
```