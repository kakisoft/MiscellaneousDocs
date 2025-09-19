# Chat GPT
https://chatgpt.com/c/68b7e88a-19bc-8326-a818-6ebb8d2c4162

______________________________________________________________
# 確認用の sshログインコマンド

ssh -p 22 -i ~/.ssh/kaki-key-sample01.pem ubuntu@52.195.220.22
ssh -p 22 -i ~/.ssh/kaki-key-sample01.pem wooms@52.195.220.22

______________________________________________________________
# issue

issue
マニュアル用Wiki：サーバ wooms-wiki-dev に、ユーザ wooms を追加
https://github.com/woomsdev/wooms-office/issues/3298


______________________________________________________________
# 前回まで
[text](logic_trace_20250718_2_2__woomsユーザ追加（前回の作業メモとログ）.md)


sudo adduser wooms
sudo gpasswd -a wooms sudo
sudo su - wooms
cd .ssh
vi authorized_keys
chmod 600 authorized_keys
chmod 700 .ssh/


## ユーザを sudo グループに追加
usermod -aG sudo wooms


______________________________________________________________

EC2 にて、Ubuntu 24 を稼働させています。
「wooms」というユーザを作成し、このユーザでsshログインできるようにしたい。
sudo は ubuntu ユーザと同じ権限を有する状態にしたい。sudo 実行したりとか。



______________________________________________________________
# 確認コマンド

## ユーザ確認
```
cat /etc/passwd
```

## グループ登録確認
```
groups wooms
```


______________________________________________________________
# woomsユーザ追加

## ユーザ作成
```
sudo adduser wooms
```
password: dev

Full Name []:   （空白）
Room Number []: （空白）
Work Phone []:  （空白）
Home Phone []:  （空白）
Other []:       （空白）


## sudo グループに追加
```
sudo usermod -aG sudo wooms
```

## SSH 公開鍵を設定
```
sudo mkdir -p /home/wooms/.ssh
sudo cp /home/ubuntu/.ssh/authorized_keys /home/wooms/.ssh/
sudo chown -R wooms:wooms /home/wooms/.ssh
sudo chmod 700 /home/wooms/.ssh
sudo chmod 600 /home/wooms/.ssh/authorized_keys
```


______________________________________________________________
# ubuntuユーザ削除前の確認項目

## 別のユーザ（例：wooms）で ssh ログインできる事
```
ssh -p 22 -i ~/.ssh/kaki-key-sample01.pem wooms@13.231.165.214
```

## 別のユーザ（例：wooms）で sudo whoami を実行した時のユーザ名を確認
sudo whoami が root になることを確認。
```
wooms@ip-172-31-1-253:~$ sudo whoami
[sudo] password for wooms:
root
```

## 別のユーザ（例：wooms）でログインした時、 sudo が実行できる事
```
sudo apt update
```
が実行できるか。


______________________________________________________________
# ubuntu ユーザを削除

## 削除せず、ログイン不可にして様子見
```
sudo usermod -L ubuntu
sudo usermod -s /usr/sbin/nologin ubuntu

```

## 完全削除削除
```
sudo deluser --remove-home ubuntu
```

## ホームディレクトリを残して削除（ログや設定を残したい場合）
```
sudo deluser ubuntu
```

## 「ホームディレクトリを残して削除（ログや設定を残したい場合）」の後に、完全削除に移行
```
sudo rm -rf /home/ubuntu
sudo rm -f /var/mail/ubuntu
```

/etc/sudoers.d/ubuntu がもしあれば削除（普通は無い）


______________________________________________________________
# 削除後の確認

```
getent passwd ubuntu
getent group ubuntu
```
-> これらの結果が空白ならOK


______________________________________________________________


