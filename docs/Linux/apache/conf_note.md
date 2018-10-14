## コンフィグの記述場所
```
サーバの設定をいじれる場合は「httpd.conf」に記述しますが、共用サーバでは「.htaccess」に記述することで有効にします。
```

## 
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