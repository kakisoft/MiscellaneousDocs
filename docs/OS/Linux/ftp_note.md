## CentOS 7
```
### vsftpdをインストール
sudo yum install -y vsftpd


#### 権限設定
sudo vi /etc/vsftpd/vsftpd.conf

anonymous_enable=NO
ascii_upload_enable=YES
ascii_download_enable=YES
ftpd_banner=Welcome to FTP service.
use_localtime=YES

など。anonymous をどうするかはお好みで。


#### サービス有効化
sudo systemctl enable vsftpd


#### FPTサーバ起動
sudo systemctl start vsftpd


#### FPTサーバ停止
sudo systemctl stop vsftpd


#### 再起動
service vsftpd restart


### ファイアウォール設定
（省略）


#### ユーザ作成
useradd ftp-user
passwd  ftp-user # パスワード設定


### FTP接続用のユーザを追加
sudo vi /etc/vsftpd/chroot_list

ftp-user
を追加。


### FTP接続時のrootディレクトリを設定
sudo vi /etc/vsftpd/user_conf/ftp-user

```


#### 参考情報：権限設定
http://cos.linux-dvr.biz/archives/category/vsftpd-ftp%E3%82%B5%E3%83%BC%E3%83%90%E3%83%BC%E6%A7%8B%E7%AF%89

