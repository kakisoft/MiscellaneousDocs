```
## ディストリ確認
(debian）cat /etc/issue
(redhat) cat /etc/redhat-release
(Amazon) cat /etc/system-release

## sshログイン
ssh -i <AccessKey> UserName@<IPアドレス>
chmod 600 <AccessKey>

（GUIモード）
ssh -Y -C
nautilus


## ファイル検索
sudo find / -name "filename" 
locate "filename"　　　※updatedb。ファイル名データベースから検索。

sudo find /etc -name "http*" -type f    # （ファイルのみ。ディレクトリは除く。）
sudo find /etc -name "http*" -type f -exec wc -l {} +

## コマンドAの実行結果を引数にしてコマンドBを実行（xargs）
sudo find /etc -name "http*" -type f | xargs wc -l


## 解凍（tar）　　　解答　回答　展開
tar xzvf asterisk-1.8.8.1.tar.gz

## 圧縮（tar）
tar czvf xxxx.tar.gz directory

 z - gzip形式を利用
 v - 処理したファイルの一覧を表示
 f - 指定したアーカイブを利用する
 x - アーカイブからファイルを取得する
 c - アーカイブを作成する

## Zipアーカイブ
zip a.zip b.txt
zip -e --password=xxxx encrypt.zip source.txt      # パスワード付き
zip -r 生成するzipファイル名 zip化するディレクトリ名   #  ディレクトリ単位
unzip -P xxxx encrypt.zip                          # パスワード付きを展開


## ログインユーザ切り替え
su [オプション] [ユーザー名]
 -   環境変数を引き継がずにユーザーを切り替える
 -m  環境変数「USER」と「LOGNAME」を切り替え後のユーザーに引き継ぐ
 -c  ユーザーを切り替えた後で、「-c」の後に記入されたコマンドを実行する

「su」 のみを実行すると、rootユーザとなる。

## マシン起動時に自動的にstart
（例：apache2、mongodb）
sysv-rc-conf apache2 on
sudo sysv-rc-conf mongod on
無ければ先にインストール。    
sudo apt-get install sysv-rc-conf


## ファイルの内容を１画面ごとに表示
～～ | more

## IPアドレス確認
ip a
ifconfig  （inet addr:xxxx の部分）

## デフォルトゲートウェイ確認
ip route show

## DNS確認
cat /etc/resolv.conf

## viを読み取り専用で開く
view <ファイル名>

## debパッケージインストール
dpkg -i <ファイル名>

## シンボリックリンク作成
ln -s <リンク先ディレクトリ名 or ファイル名> <作成するリンク名>

内容確認は　ls -l

## シンボリックリンク削除
unlink <リンク名>

## シンボリックリンクのコピー
ln -s <リンク先ディレクトリ名 or ファイル名> <作成するリンク名>

## ユーザ一覧
cat /etc/passwd

vagrant:x:900:900:vagrant,,,:/home/vagrant:/bin/bash
ユーザ名:x:ユーザID:グループ:コメント:ホームディレクトリ:シェル
（xは、パスワードが必要という意味）

## グループ一覧
cat /etc/group
グループ名:x:グループID:グループ所属のユーザ名
（xは、グループログインにパスワードが必要という意味）

## 自分が所属しているグループの確認
groups



## chmodメモ
ugo                      rwx     a全ユーザ
ユーザ  グループ  その他

パーミッション  ファイル所有ユーザ  グループ  ファイルサイズ  最終更新日  ファイル名
-rwxr-x--x 1 vagrant vagrant 0 Aug 11 10:21 bbb.sql

d ディレクトリ
- 通常のファイル
l シンボリックリンク

rwx ・・・ ファイル所有ユーザのアクセス権
r-x ・・・ グループに所属しているユーザのアクセス権
--x ・・・ その他のユーザのアクセス権


（その他ユーザに読み込み権限を追加）
chmod o+r bbb.sql


（サブディレクトリを含めて変更）
sudo chmod -R 777 app


## 所有者変更
sudo chown vagrant:vagrant filename


## ログの確認
/var/log/messages
lessよりもtailコマンドが便利


## 行数・単語数を取得（正確な数字ではない？）
wc /var/log/syslog.1
行数、単語数、バイト数


## テキストの中身を検索
grep 'etc' /var/log/syslog.1
grep (etc|cd|root) /var/log/syslog.1
grep -E -R "(etc|root|report)" /var/log/syslog.1

-E  検索に正規表現を使う
-r  サブディレクトリも含めて検索
-R  サブディレクトリ、シンボリックリンク先も含めて検索


## 環境変数（パスの確認）
printenv

## パスを確認するだけなら、これでOK
echo $PATH

（追加例。「$PATH:/usr/pgsql-9.6/bin」を追加。）
export PATH=$PATH:/usr/pgsql-9.6/bin

/usr/local/sbin
/usr/local/bin
/usr/sbin
等はデフォルトで入ってる。


## リモート端末のファイルをコピー
（下記は ec2への接続）
scp -i secret_key.pem ec2-user@hostname:/home/ec2-user/file_name.txt ~/

## リモート端末のディレクトリをコピー
（下記は ec2への接続）
scp -r -i secret_key.pem ec2-user@hostname:/home/ec2-user/dir_name/ ~/

## 中身ごとディレクトリを中身削除
rm -rf

## ログインユーザ確認
whoami 

## 現在の作業をバックグラウンドに移動
[ctrl] + z
復帰する場合
fg

## 画面を分割して作業
＜tmux＞
無ければ apt-get や yum でインストール。
起動後
[ctrl] + B → [Shift] + 2

・フォーカス画面の切り替え 
[ctrl] + B → 矢印キー
分割を解除
分割された画面にて exit

## Windowsのメモ帳チックなエディタ起動
gegit

## 再起動
sudo shutdown -r now

## 文字コードを識別
file -i <FILE-NAME>
nkf -g <FILE-NAME>
※半角英数のみで構成されたファイルの場合、「ASCII」と推測される。

## 文字コード変換
nkf -e file.txt > euc.txt
nkf -w --overwrite readme.txt
nkf -Ew 対象ファイル

ファイルの文字コードを指定する	
J … JIS
E … EUC-JP
S … SJIS
W … UTF-8
変換後の文字コードを指定する	
j … JIS
e … EUC-JP
s … SJIS
w … UTF-8

## 失敗したコマンドを強制的に実行
--force
--f
とかで、強制インストール/アンインストール（エラーを無視して実行）できるコマンドがある。

## プロセス
ps aux
 a … 端末を持つすべてのプロセスを表示
 u … 実行ユーザ名や実行ユーザのIDのプロセスを表示
 x … 制御端末の無いプロセスを表示

ps afu
 ツリー上に見る

## kill
kill -9 <PID>
9：Killシグナルによるプロセスの終了
http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230806/?rt=nocnt

（コマンド名が分かっている場合、この書き方でもOK）
killall bash


## 接続端末のデバイスファイル名を表示
tty


## curl
curl -X POST http://kakiaaa.herokuapp.com/challenge_users -d name=tanaka -d email=tanaka@gmail.com
______________________________________________________________

## cd
cd     ホームディレクトリに戻る
cd -  １つ前に戻る


## ファイルサイズ確認
ls -lh


## 容量確認
＜ドライブ単位＞
df -hT
（ /dev を確認 ）

＜ディレクトリごと＞
du -h
（調べたいディレクトリで実行）

＜深さを指定して調査＞
du -h --max-depth 3

＜300MB以上のファイルを表示＞
find . -size +300M | xargs ls -l | sort -rn


## zip化
zip -r "yyyymmdd.zip" *


## メモリ利用率を確認
free -m

## マシン情報を確認
cat /proc/cpuinfo

## 画面クリア
Ctrl + l（エル）

## リダイレクト
echo "date" > cmd.txt
echo "free" >> cmd.txt

## ファイルの内容をコマンドに渡す
bash < cmd.txt

（結果を別ファイルに保存）
bash < cmd.txt > result.txt


## 起動サービス（デーモン）確認
CentOS6    chkconfig --list
CentOS7    systemctl list-unit-files -t service


## エイリアス
alias  # 引数なしで実行すると、一覧を確認
alias apast='sudo systemctl restart httpd.service'

unalias apast  # 削除

## エイリアスを保持
sudo vi ~/.bashrc
alias apast='sudo systemctl restart httpd.service'

## ポートの空きを確認
nmap <HOSTNAME>

＜ssコマンド＞
ss

＜netstat は、CentOs7からは非推奨？＞
netstat -nap

sudo netstat -ltup4

-l	Listenしているポートのみ表示
-t	TCPを表示
-u	UDPを表示
-n	ポートやホストを数値で表示
-p	ポートを開いているプロセスを表示（sudo）
-4	IPv4のみ
-6	IPv6のみ


# 起動中のサービスの一覧を表示 (--all を付けると全サービス)
systemctl -t service


## postfix
systemctl status postfix.service

systemctl stop postfix 
systemctl disable postfix 


## rpm
sudo rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm

e - 削除



```
