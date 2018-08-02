```
# ディストリ確認
(debian）cat /etc/issue
(redhat) cat /etc/redhat-release
(Amazon) cat /etc/system-release

# sshログイン
ssh -i <AccessKey> UserName@<IPアドレス>
chmod 600 <AccessKey>

# rootユーザに変更
sudo su

# ユーザ変更
su (ユーザ名)
su postgres

# ファイル検索
sudo find / -name "filename" 
locate "filename"　　　※updatedb。ファイル名データベースから検索。

# 解凍
tar zxvf asterisk-1.8.8.1.tar.gz

z --gzip     gzipで
x --extract  抽出する
v --verbose  冗長に
f --file     このファイルを

# 圧縮
zcvf

c --create  作り出す

# ログインユーザ切り替え
su [オプション] [ユーザー名]
 -   環境変数を引き継がずにユーザーを切り替える
 -m  環境変数「USER」と「LOGNAME」を切り替え後のユーザーに引き継ぐ
 -c  ユーザーを切り替えた後で、「-c」の後に記入されたコマンドを実行する

## マシン起動時に自動的にstart
（例：apache2、mongodb）
sysv-rc-conf apache2 on
sudo sysv-rc-conf mongod on
無ければ先にインストール。    
sudo apt-get install sysv-rc-conf


# ファイルの内容を１画面ごとに表示
～～ | more

# IPアドレス確認
ip a
ifconfig  （inet addr:xxxx の部分）

# デフォルトゲートウェイ確認
ip route show

# DNS確認
cat /etc/resolv.conf

# viを読み取り専用で開く
view <ファイル名>

# debパッケージインストール
dpkg -i <ファイル名>

# シンボリックリンク作成
ln -s <リンク先ディレクトリ名 or ファイル名> <作成するリンク名>

内容確認は　ls -l

# シンボリックリンク削除
unlink <リンク名>

# シンボリックリンクのコピー
ln -s <リンク先ディレクトリ名 or ファイル名> <作成するリンク名>

# chmodメモ：ugo  rwx     a全ユーザ

# ログ見るときはlessよりもtailコマンドが便利

# パスの確認
echo $PATH

/usr/local/sbin
/usr/local/bin
/usr/sbin
等はデフォルトで入ってる。

# リモート端末のファイルをコピー
（下記は ec2への接続）
scp -i secret_key.pem ec2-user@hostname:/home/ec2-user/file_name.txt ~/

# リモート端末のディレクトリをコピー
（下記は ec2への接続）
scp -r -i secret_key.pem ec2-user@hostname:/home/ec2-user/dir_name/ ~/

# 中身ごとディレクトリを中身削除
rm -rf

# ログインユーザ確認
whoami 

# 現在の作業をバックグラウンドに移動
[ctrl] + z
復帰する場合
fg

# 画面を分割して作業
＜tmux＞
無ければ apt-get や yum でインストール。
起動後
[ctrl] + B → [Shift] + 2

・フォーカス画面の切り替え 
[ctrl] + B → 矢印キー
分割を解除
分割された画面にて exit

## tmux【 Cent OS 7 】
・水平分割
Ctrl-b + “

・垂直分割
Ctrl-b + %

・移動
Ctrl-b + o

http://developers.goalist.co.jp/entry/2017/03/09/184319



# Windowsのメモ帳チックなエディタ起動
gegit

# 再起動
sudo shutdown -r now

# SSHログイン
ssh -i <AccessKey> UserName@<IPアドレス>

# 文字コードを識別
file -i <FILE-NAME>
nkf -g <FILE-NAME>
※半角英数のみで構成されたファイルの場合、「ASCII」と推測される。

# 文字コード変換
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

## kill
kill -9 <PID>
9：Killシグナルによるプロセスの終了
http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230806/?rt=nocnt

# 接続端末のデバイスファイル名を表示
tty


## curl
curl -X POST http://kakiaaa.herokuapp.com/challenge_users -d name=tanaka -d email=tanaka@gmail.com
______________________________________________________________

## cd
cd     ホームディレクトリに戻る
cd -  １つ前に戻る


## 環境変数（Environment variable)
＜表示＞
printenv
echo $PATH

＜設定＞
export PATH=$PATH:/usr/pgsql-9.6/bin


## SELinuxの状態確認方法
https://www.server-memo.net/centos-settings/selinux/deiabled-selinux.html
getenforce
sestatus


## グループの一覧を確認  group
getent group
または
view /etc/group

（例）
apache:x:48:kaki
postgres:x:26:


x・・・「 x 」という文字か、暗号化されたパスワード。「 x 」はシャドウパスワードを使用している事を意味する。
48・・・グループID( GID )
kaki・・・サブグループとして所属しているユーザーアカウントのリスト。カンマ区切り。



ユーザーは、複数のグループに所属する事ができる。
ユーザーの基本のグループの事をプライマリグループ or イニシャルグループといい、 
それ以外で所属しているグループの事を、サブグループといいます。

あるユーザーがファイル等を作成した場合、通常、ファイルのグループは、プライマリグループに設定されます。








```


