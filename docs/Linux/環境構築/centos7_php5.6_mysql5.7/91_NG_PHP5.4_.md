#### 準 NGパターン
```
※
この方法だと、PHP 5.4 がインストールされた。
が、ロードモジュールは正常に配置されていたんで、Apacheは動く。
```

## CentOS 7 に PHP 5.6 を yum でインストールする手順
<https://weblabo.oscasierra.net/centos7-php56-install/>  
```
実際にやってみたら、5.4 がインストールされた。
が、03のやり方だと、ApacheがちゃんとPHPを解釈してくれなかったので、
渋々このバージョンでやってる。
```

### コマンド
```
sudo yum remove -y php*
sudo yum remove -y epel-release*


sudo yum -y install epel-release
cd /etc/yum.repos.d
curl -O http://rpms.famillecollet.com/enterprise/remi.repo
sudo yum -y --enablerepo=remi,remi-php56 install httpd php php-common

（アパッチ再起動）
sudo systemctl restart httpd.service
```