## CentOS
### インストール
```
sudo yum install -y samba
```
### 設定
```
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bk
sudo vi /etc/samba/smb.conf

＜ファイル編集例＞
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[global]
workgroup = WORKGROUP
server string = Samba Server %v
netbios name = centos7
security = user
map to guest = bad user
dns proxy = no
 
#==========================================================
 
[Share]
#共有させるフォルダ
path = /samba/share/
#マイネットワークに表示させるか否か
browsable =yes
#書き込み可能かどうか
writable = yes
#ゲストユーザのログインが可能かどうか
guest ok = yes
#読込みのみとするか
read only = no
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

```
### 共有フォルダ作成・設定
```
sudo mkdir -p /samba/share/
sudo chmod -R 0777 /samba/share
sudo chown -R nobody:nobody /samba/share
```

### sambaの起動・起動設定
```
sudo systemctl enable smb nmb
sudo systemctl start smb nmb
```

### firewall
```
sudo firewall-cmd --permanent --zone=public --add-service=samba
sudo firewall-cmd --reload
```

### SELinux
```
sudo chcon -t samba_share_t /samba/share
```
_______________________________________\
#### ＜参考サイト＞
<https://orebibou.com/2014/12/centos7%E3%81%ABsamba%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB/>  

