## コンフィグの記述場所
```
Apache 全般に関する設定は「httpd.conf」に記述し、ディレクトリ単位で設定が必要な場合は「.htaccess」に記述する。

サーバの設定をいじれる場合は「httpd.conf」に記述しますが、共用サーバでは「.htaccess」に記述することで有効にします。
```

## httpd.conf のパス
```
CentOS のデフォルトでは、
/etc/httpd/conf/httpd.conf
```
## httpd.conf のパス：確認コマンド
```
httpd -V

Server compiled with....
 -D HTTPD_ROOT="/etc/httpd"
 -D SERVER_CONFIG_FILE="conf/httpd.conf"
```

## httpd.conf のテスト
/usr/sbin/httpd -t

## httpd.conf 基本設定
```
# サービスのポート番号
Listen 80
Listen 8080

# httpdデーモンのユーザ名・グループ名
User apache
Group apache

# サーバ管理者のメールアドレス
ServerAdmin root@localhost

# 意図したサーバ名を使用する場合にのみ指定。ただし、DNSに登録されているホスト名を使用する。
ServerName www.example.com:8
``

## httpd.confの設定確認
httpd -M

## キャッシュしない
/etc/httpd/conf/httpd.conf
```
<Directory [対象のディレクトリ]>
EnableMMAP Off
EnableSendfile Off
</Directory>
```
________________________________________________________________________________
# キャッシュのクリア

【参考】  
<https://server-setting.info/centos/htcacheclean-setting.html#htcacheclean_1>  

## htcacheclean
```
htcacheclean -r
       全消去します。
       このオプションが指定するときは、apacheウェブサーバは停止しているものとします。
       (もし、停止していない場合は、キャッシュにごみが残る場合があります。)
       このオプションは-dとは同時に使用できません。また、-tオプションを含んでいます。
```