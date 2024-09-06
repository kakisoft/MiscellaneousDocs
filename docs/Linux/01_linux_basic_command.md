```
## ディストリ確認
(debian) cat /etc/issue
(redhat) cat /etc/redhat-release
(Amazon) cat /etc/system-release  ,  cat /etc/os-release


## ハイフン
bash -
標準出力を表す


## 先頭「~ $ 」と「/ #」の違い
~ $ ・・・・ 一般的なユーザーのシェル（通常はBashやZshなど）

/ # ・・・・ルートユーザー（スーパーユーザー）のシェル。


## ls コマンドで、サブディレクトリまで含めて表示（子ディレクトリまで含めて表示）
ll -d $(find `pwd`)


## tree ツリー
（代用）
pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g'

## ファイル検索
sudo find / -name "filename" 
locate "filename"　　　※updatedb。ファイル名データベースから検索。

sudo find /etc -name "http*" -type f    # （ファイルのみ。ディレクトリは除く。）
sudo find /etc -name "http*" -type f -exec wc -l {} +

#### 10分以内に更新されたファイルを検索
sudo find . -type f -mmin -10

-type ・・・ ファイルタイプ（f:通常ファイル、d:ディレクトリ、l:シンボリックリンク）
-mmin <分> ・・・ 指定した分数より前に更新されたファイル。「-mmin 3」で3分前、「-mmin +3」で3分以上前、「-mmin -3」で3分以内に更新。
-mtime <日数> ・・・・同上


## コマンドAの実行結果を引数にしてコマンドBを実行（xargs）
sudo find /etc -name "http*" -type f | xargs wc -l


## コマンド1が終了したらコマンド2を実行する（実行結果に関わらず）
コマンド1 ; コマンド2　
sleep 5m ; date


## コマンド1を実行しつつコマンド2も実行（バックグラウンドでコマンド1を実行しつつ、コマンド2も実行）
コマンド1 & コマンド2


## コマンド1が正常終了したらコマンド2を実行（コマンド1が正常終了したときのみ、コマンド2を実行）
コマンド1 && コマンド2
cd /home/egawa/ && touch egawa.txt


## コマンド1の結果をコマンド2に渡して実行
コマンド1 | コマンド2
ps aux | grep httpd


## コマンド1が異常終了した時に コマンド2を実行
コマンド1 || コマンド2
cd /home/egawa/abc || mkdir /home/egawa/abc


## 解凍（tar）　　　解答　回答　展開
tar xzvf asterisk-1.8.8.1.tar.gz


## 圧縮（tar）
tar czvf xxxxx.tar.gz directory

 z - gzip形式を利用
 v - 処理したファイルの一覧を表示
 f - 指定したアーカイブを利用する
 x - アーカイブからファイルを取得する
 c - アーカイブを作成する


## Zipアーカイブ
zip a.zip b.txt
zip -e --password=xxxxx encrypt.zip source.txt     # パスワード付き
zip -r 生成するzipファイル名 zip化するディレクトリ名   #  ディレクトリ単位
unzip -P xxxxx encrypt.zip                         # パスワード付きを展開


#### zip 圧縮・解凍(展開)
zip -r xxxxx.zip directory_name
unzip xxxxx.zip


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

nm-connection-editor
というコマンドで、グラフィカルになんかいい感じに見れる。


## IPアドレス変更
＜Debian＞
/etc/network/interfaces    古いシステム？

sudo ifdown eth0
sudo ifup eth0
で、設定を反映。


＜Red Hat＞
/etc/sysconfig/network-scripts/ifcfg-eth0
                                     （インターフェース名）

＜共通？＞
新しめのバージョンでは、
nmcli
が使えるみたい。
nmcli device


## デフォルトゲートウェイ確認
ip route show


## DNS確認
cat /etc/resolv.conf


## viを読み取り専用で開く
view <ファイル名>


## debパッケージインストール
dpkg -i <ファイル名>


## 実行コマンドのパスを表示
which
＜使用例＞
which n

## ファイルの状態を確認（ユーザ等）
stat
＜使用例＞
stat runOpa.sh
stat $(which n)


## シンボリックリンク作成
ln -s <リンク先ディレクトリ名 or ファイル名> <作成するリンク名>

内容確認は　ls -l

-fオプション（--forceオプション）
すでに登録名が登録されるものであった場合、登録内容を上書き登録する。

-iオプション（--interactiveオプション）
すでに登録名が登録されるものであった場合、登録内容を上書き登録するか確認する問い合わせがある


## シンボリックリンク削除
unlink <リンク名>


## シンボリックリンクのコピー
ln -s <リンク先ディレクトリ名 or ファイル名> <作成するリンク名>

## シンボリックリンクコマンドのオプション
-s ： シンボリックリンクを作成します。シンボリックリンクは、ファイルまたはディレクトリへの参照として動作します。
-n ： 既存のファイルを上書きせず、エラーを表示せずに処理をスキップします。既存のファイルがある場合、新しいリンクは作成されません。
-f ： 既存のファイルやディレクトリに強制的にリンクを作成します。既存のファイルやディレクトリがある場合でも、それを削除して新しいリンクを作成します。

ln -snf コマンドは、既存のファイルを上書きし、シンボリックリンクを作成する際にエラーを無視します。


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


|  ls -lでの表示  |  意味                                          |
|:----------------|:-----------------------------------------------|
|  -              |  通常のファイル（Regular File）                |
|  d              |  ディレクトリ                                  |
|  l              |  シンボリックリンク                            |
|  c              |  キャラクタ型デバイスファイル（特殊ファイル）  |
|  b              |  ブロック型デバイスファイル（特殊ファイル      |


rwx ・・・ ファイル所有ユーザのアクセス権
r-x ・・・ グループに所属しているユーザのアクセス権
--x ・・・ その他のユーザのアクセス権


（その他ユーザに読み込み権限を追加）
chmod o+r bbb.sql


（サブディレクトリを含めて変更）
sudo chmod -R 777 app


## 所有者変更
sudo chown vagrant:vagrant filename

（例）
sudo chown ec2-user:ec2-user ./ -Rf

-f
Don't report any failure to change file owner or group, nor modify the exit status to reflect such failures.

-R
Change the user ID and/or the group ID for the file hierarchies rooted in the files instead of just the files themselves.



## シンボリックリンクの場所を調べる
readlink phpunit


## ログの確認
/var/log/messages
lessよりもtailコマンドが便利


## 行数・単語数を取得（正確な数字ではない？）
wc /var/log/syslog.1
行数、単語数、バイト数


## テキストの中身を検索
grep wordddd *
grep -r SEARCH_TEXT *

grep 'etc' /var/log/syslog.1
grep (etc|cd|root) /var/log/syslog.1
grep -E -R "(etc|root|report)" /var/log/syslog.1
grep --include='*.js' -r option * | grep type


-E  検索に正規表現を使う
-r  サブディレクトリも含めて検索
-R  サブディレクトリ、シンボリックリンク先も含めて検索
-n  行番号を表示
-dskip   grep: XXX: Is a directory  といった行をカット
--include='*.js'    ファイル名を指定

色々と参考になるもの
https://wa3.i-3-i.info/word11252.html


## 圧縮したテキストも検索
zgrep


## 先頭１行を出力
head -n 1 user_info.rb >> aaa.txt


## 環境変数を表示
printenv

特定の環境変数を確認（例：APP_ENV）
printenv APP_ENV

環境変数をセット
export APP_ENV="local"

環境変数を削除
unset NAME


## パスを確認するだけなら、これでOK
echo $PATH

（追加例。「$PATH:/usr/pgsql-9.6/bin」を追加。）
export PATH=$PATH:/usr/pgsql-9.6/bin

/usr/local/sbin
/usr/local/bin
/usr/sbin
等はデフォルトで入ってる。

＜改行＞
echo $PATH | tr ':' '\n'


## set
http://linuxcommand.org/lc3_man_pages/seth.html

set - Set or unset values of shell options and positional parameters.

-e  Exit immediately if a command exits with a non-zero status.
-x  Print commands and their arguments as they are executed.


## リモート端末のファイルをコピー
（下記は ec2への接続）
scp -i secret_key.pem ec2-user@hostname:/home/ec2-user/file_name.txt ~/


## リモート端末のディレクトリをコピー
（下記は ec2への接続）
scp -r -i secret_key.pem ec2-user@hostname:/home/ec2-user/dir_name/ ~/


## サーバのファイルをローカルにコピー（ .ssh/config の設定が使用可）
ログファイルをローカルに落とす
scp odk_wooms_dev:/home/wooms/log/* .


## 中身ごとディレクトリを中身削除
rm -rf


## ログインユーザ確認
whoami 


## 現在の作業をバックグラウンドに移動
[ctrl] + z
復帰する場合
fg


## 画面を分割して作業 : tmux
＜tmux＞
無ければ apt-get や yum でインストール。
起動後
[ctrl] + B → [Shift] + 2

・フォーカス画面の切り替え 
[ctrl] + B → 矢印キー
分割を解除
分割された画面にて exit


## 画面を分割して作業 : screen
スクリーン起動
screen -S monitor01

デタッチ（抜ける）
Ctrl A -> Ctrl D

スクリーン一覧
screen -ls

スクリーン一覧から選択
screen -r monitor01


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
とかで、強制インストール/アンインストール（エラーを無視して実行）できるオプションがある。


## プロセス
ps aux
 a … 端末を持つすべてのプロセスを表示
 u … 実行ユーザ名や実行ユーザのIDのプロセスを表示
 x … 制御端末の無いプロセスを表示

ps afu
 ツリー上に見る

＜コマンド例＞
ps aux | grep odoo


## kill
kill -9 <PID>
9：Killシグナルによるプロセスの終了
http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230806/?rt=nocnt

（コマンド名が分かっている場合、この書き方でもOK）
killall bash


## 終了コード
echo $?

（例：テスト実行コマンド）
php artisan test --testsuite=Unit

0 - 成功
0以外 - 失敗



## 接続端末のデバイスファイル名を表示
tty




## ユーザ追加
sudo adduser myuser


## ユーザを sudo グループに追加
usermod -aG sudo myuser


## ユーザが所属するグループを表示
groups myuser


## ユーザ無効化    ユーザ削除
userdel ubuntu


## ホスト名を変更    ホスト名変更
sudo hostnamectl set-hostname my.host.name





## curl
https://curl.se/docs/manpage.html
https://www.mit.edu/afs.new/sipb/user/ssen/src/curl-7.11.1/docs/curl.html



curl -X POST http://kakiaaa.herokuapp.com/challenge_users -d name=tanaka -d email=tanaka@gmail.com  


curl -X POST [url] -d "name=hoge"
curl -X POST [url] -d "name=hoge&age=20"


#### ステータスコードのみを取得
curl -s {https://lolipop.jp/manual/tos/?} -o /dev/null -w '%{http_code}\n'

 -w (write out)で http_code を指定しつつ、
 -o (output)で、不要な情報は /dev/null にでも捨てる。
 -s (silent)を指定して「進捗どうですか？」を表示しないようにする。

 -k    sslエラーを無視

#### ヘッダ情報を取得
curl -I https://admin.dummy.localdev/

-I  Fetch the headers only!


### ヘッダ情報を表示（ALL）
curl -i http://challenge-your-limits.herokuapp.com/call/me
curl -i https://geoapi.heartrails.com/api/json


「Access-Control-Allow-Origin:*」とかみたい場合、こっち。


### ＜使用例＞
curl -k -s https://localhost:44364/api/Products/3 | python -m json.tool

-k    sslエラーを無視
-s    silent
JSON は、より適切に表示するため、Python の json.tool モジュールに送信されます。
　
-S(-sS):  --show-error  <進捗はいらないけどエラーは表示したい>  -S オプションは -s オプションと併用することが前提のオプションで、進捗は表示されないけどエラーは表示されるようになる。


curl -v -k \
    -H "Content-Type: application/json" \
    -d "{\"name\":\"Plush Squirrel\",\"price\":0.00}" \
    https://localhost:44364/api/Products


-d は、HTTP POST 操作を意味し、要求本文を定義します。
-H は、要求本文が JSON 形式であることを示します。 ヘッダーの値で、既定のコンテンツ タイプ application/x-www-form-urlencoded がオーバーライドされます。


-L, -location
要求したページにリダイレクトが掛かっていた場合に追従する。この時要求がPOSTメソッドだった場合GETに変えられてしまうので変えられたくない場合は -post301, -post302, -post303等のオプションを併用する。


-v, -verbose
処理状況の更なる詳細や説明を出力させます。


-f, --fail          Fail silently (no output at all) on HTTP errors


#### BASIC認証
-u user:password


#### curl を使ってグローパルIPアドレスを確認
curl ifconfig.io


#### 日本語 Unicode エスケープ
echo -en "$(curl -s https://dev-api.example.com/api/report/personal/38)"

-e interprets escapes
-n suppresses the newline


{"message":"\u8a31\u53ef\u3055\u308c\u3066\u3044\u306a\u3044\u65b9\u6cd5"}
↓
{"message":"許可されていない方法"}

https://stackoverflow.com/questions/8795702/how-to-convert-uxxxx-unicode-to-utf-8-using-console-tools-in-nix


サービスから使用
https://www.oh-benri-tools.com/tools/programming/unicode-escape-unescape


PHP で使用する場合、json_decode を使用。

______________________________________________________________

## cd
cd     ホームディレクトリに戻る
cd -  １つ前に戻る


## ファイルサイズ確認
ls -lh


## ディスクの空き容量確認    容量を確認
https://xtech.nikkei.com/it/article/COLUMN/20060227/230748/


```
（１発目はこれ。※ルートディレクトリに移動して実行）
df -h
du -h --max-depth 1
```


[du]
-h	容量を適当な単位で表示する
-s  引数で指定したファイルやディレクトリの総計を表示する

＜ディレクトリ＞
du -sh <dir_name>

＜ファイルも＞
du

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


## 日付確認
date


## タイムゾーンを日本に設定１
https://docs.google.com/spreadsheets/d/1SV1X48sucQD336GbtHfIbMxM5aZ3cV8ktuFC3z8s0D8/edit#gid=1965433726

（Ubuntu 18 にて検証）
export TZ=Asia/Tokyo
sudo ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
sudo apt install -y awscli


## タイムゾーンを日本に設定２
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime


## 日付修正（手動  ）
sudo date -s "2018/09/27 09:39:00"


## タイムゾーンの確認
timedatectl

UTC（協定世界時）
JST(日本標準時)


## ズレた日付の修正
sudo yum -y install ntpdate  
sudo ntpdate ntp.nict.jp  


## リダイレクト
echo "date" > cmd.txt
echo "free" >> cmd.txt


## echo
-n    改行しない
-e    エスケープ有効（echo -e "a\tb"）


## ファイルの内容をコマンドに渡す
bash < cmd.txt

（結果を別ファイルに保存）
bash < cmd.txt > result.txt


## 起動サービス（デーモン）確認
CentOS6    chkconfig --list
CentOS7    systemctl list-unit-files -t service



## service（centOS 6 まで）
（nginxが起動しているかどうか確認）
service nginx status


## systemctl（centOS 7 以降）
（nginxが起動しているかどうか確認）
systemctl status nginx




## エイリアス
alias  # 引数なしで実行すると、一覧を確認
alias apast='sudo systemctl restart httpd.service'

unalias apast  # 削除


## エイリアスを保持
sudo vi ~/.bashrc
alias apast='sudo systemctl restart httpd.service'


## エイリアスを作成（max）
vi ~/.bashrc
alias ll='ls -la'


vi .bash_profile
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi


source ~/.bashrc


### 再読み込み
source ~/.bashrc
source ~/.bash_profile


## エイリアスを保持（zsh）
vi ~/.bashrc

alias ll='ls -la'
export PATH=$HOME/.nodebrew/current/bin:$PATH
export DOCKER_CONTENT_TRUST=1

source ~/.zshrc


## 一般的な変数
COMMON_NAME=www.google.co.jp

echo $COMMON_NAME


## ポートの空きを確認
nmap <HOSTNAME>


## 起動中のポートを確認
netstat -tuln
netstat -tuln | grep 3000

-t: TCPの接続を表示
-u: UDPの接続を表示
-l: リスニング状態 (待ち受け中のポート) の接続のみを表示。実際にデータの転送が行われている接続ではなく、待ち受け状態のポートが表示される。
-n: ポート番号やホスト名を数値形式で表示す。通常、ポート番号やホスト名が数値以外で表示されるのを避けるために使用される。



## ping：ポート番号を指定
ping にそういうオプションは無いんで、代わりにこれで。

nc -v -w 1 <IP address> -z <port>
nc -v -w 1 10.0.1.45 -z 5432


## どのサービスがポートを使用しているかチェック
sudo lsof -i :5432
※sudo を付けないと、表示範囲に違いが出る

-i: ネットワーク接続に関連する情報

＜ssコマンド＞
ss


### TCP/IP通信の状態を調べる（どの IPアドレスと接続しているか通信状態を表示できる）
＜netstat は、CentOs7からは非推奨？＞
sudo netstat --help

### 待ち受け中のポートを表示
sudo netstat -putan
sudo netstat -putan | grep 80(port)


sudo netstat -anp
sudo netstat -ltup4


-a  すべての接続とリッスン ポートを表示
-l	Listenしているポートのみ表示
-t	TCPを表示
-u	UDPを表示
-n	ポートやホストを数値で表示
-p	ポートを開いているプロセスを表示（sudo）
-4	IPv4のみ
-6	IPv6のみ


# 起動中のサービスの一覧を表示 (--all を付けると全サービス)
systemctl -t service

## ファイアウォール（Ubuuntu） Debian
ufw enable                ufwを有効化
ufw disable               ufwを無効化
ufw status                ufwの状態とルールを表示
ufw status verbose        ufwの状態とルールを表示
ufw allow [xxx]           ポートを開くルールの追加
ufw delete allow [xxx]    不要なルールを削除する
ufw app list              アプリケーションの一覧表示
ufw help                  ヘルプ表示

＜設定例＞
sudo ufw default deny
sudo ufw allow 80
sudo ufw enable
sudo ufw reload


## ファイアウォール（CentOS） RedHat
※未検証
sudo systemctl start firewalld
sudo systemctl enable firewalld
firewall-cmd --set-default-zone=public
firewall-cmd --add-port=80/tcp --zone=public --permanent
firewall-cmd --add-port=22/tcp --zone=public --permanent
firewall-cmd --remove-port=80/tcp --zone=public --permanent
firewall-cmd --reload


## httpdデーモン再起動(CentOS7)
sudo systemctl start httpd
sudo systemctl start httpd.service


## httpdデーモン起動確認(CentOS7)
[vagrant@user ~]$ ps aux | grep http
root     10502  0.0  1.1 249308 11624 ?        Ss   12:49   0:00 /usr/sbin/httpd
apache   10519  0.0  0.7 249308  7352 ?        S    12:49   0:00 /usr/sbin/httpd
apache   10520  0.0  0.7 249308  7344 ?        S    12:49   0:00 /usr/sbin/httpd
apache   10521  0.0  0.7 249308  7344 ?        S    12:49   0:00 /usr/sbin/httpd
apache   10522  0.0  0.7 249308  7344 ?        S    12:49   0:00 /usr/sbin/httpd
apache   10523  0.0  0.7 249308  7344 ?        S    12:49   0:00 /usr/sbin/httpd
vagrant  10626  0.0  0.0 107484   920 pts/0    R+   12:50   0:00 grep http



## ファイアウォール起動確認（CentOS7）
systemctl status firewalld.service
firewall-cmd --state


https://qiita.com/kenjjiijjii/items/1057af2dddc34022b09e





## ファイアウォール（共通。古い書き方）
【iptales】

（全てのフィルターを消去）
sudo iptables --table filter --flush

（インバウンドを全て不許可、アウトバウンドと中継は全て許可）
sudo iptables --policy INPUT DROP
sudo iptables --policy OUTPUT ACCEPT
sudo iptables --policy FORWARD ACCEPT

（許可するポートを設定）
sudo iptables --append INPUT --protocol tcp --match state --state NEW --dport 22 --jump ACCEPT
sudo iptables --append INPUT --protocol tcp --match state --state NEW --dport 80 --jump ACCEPT

（ループバック（内部同士の通信）は許可）
sudo iptables --append INPUT --in-interface lo --jump ACCEPT

（通信確立と、確立済みの通信に関連する内容も許可）
sudo iptables --append INPUT --match state --state ESTABLISHED,RELATED --jump ACCEPT

（ICMP を許可）
sudo iptables --append INPUT --protocol icmp --jump ACCEPT

（保存）
sudo iptables-save -c
「service iptables save」は古い書き方？エラー出た。

（内容確認）
sudo iptables --list

（全削除）
sudo iptables --flush

## アクセスログの確認
＜Debian＞
/var/log/auth.log

＜RedHad＞
/var/log/secure


less /var/log/auth.log


## http（apache）ログの確認（例）
（圧縮されたファイルの中身を見る）
/var/log/httpd
zcat error_log*gz | grep -e "May 31"

cat access_log | grep -e 14.3.75.116 -e 49.239.65.139 | grep delete |grep -v GET
cat access_log | grep -e 49.106.211.219 | grep "24/Jun"
cat access_log | grep -e 49.106.211.219 -e 49.106.211.219
zcat error_log*gz | grep -e 114.157.38.153
zcat error_log*gz | grep -e "Jun 24" | grep -e 49.106.211.219
zcat access_log*gz | grep -e 114.157.38.153 -e 49.106.211.219 -e 49.106.213.212 -e 49.98.88.145 -e 49.96.22.136 | grep -v GET
cat error_log | grep 114.157.38.153




## アクセス状況を動的に見る
tail -F /var/log/auth.log


## postfix （メールサーバ）
systemctl status postfix.service

systemctl stop postfix 
systemctl disable postfix 


## rpm
sudo rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm

e - 削除


## cp
cp -a basefile targetfile

-a  更新時刻などもコピー元と同じになる。（属性もコピー元と同一）
-r

## ハッシュ値を算出
md5sum ＜ファイル名＞
sha1sum
sha256sum
sha512sum

この値が同一かどうかで、ファイルが同一かどうかを調べることができる。


## ファイル比較
diff -ru ＜ファイル１＞ ＜ファイル２＞

r  --recursive
u  --unfied


（使用例）
diff -ru ~/.ssh/config ~/.ssh__bk_20220415__/config
diff -ru ~/.ssh/id_rsa ~/.ssh__bk_20220415__/id_rsa
diff -ru ~/.ssh/id_rsa.pub ~/.ssh__bk_20220415__/id_rsa.pub
diff -ru ~/.ssh/known_hosts ~/.ssh__bk_20220415__/known_hosts


## ネットワーク帯域チェック（どのプロセスやサービスが一番ネットワークに負荷をかけているかチェック）
nethogs


## 通信相手のコンピュータとの通信料を調べる
iftop


## 備考
init.d スクリプト     古いバージョン
service コマンド      やや古めの環境
systemctl コマンド    systemd 採用環境


## quota (クォータ)機能
quota 機能とは、一般ユーザが作成できる「ファイル数」および「ブロック数」の合計をユーザごとに制限する機能です。  
この機能により、個々のユーザのファイルシステム資源の浪費を防止することができます。


[root@users694 ~]# quota -u main.jp-castle2
Disk quotas for user main.jp-castle2 (uid 790327):
     Filesystem  blocks   quota   limit   grace   files   quota   limit   grace
      /dev/sdd1 4279900  10485760 10485760          149330  150543  150543
[root@users694 ~]#


## パスワード生成
brew install pwgen
sudo apt-get install pwgen

pwgen

（16桁のパスワードを１つ）
pwgen 16 1
https://qiita.com/speg03/items/ec404c217e417160e2d5



## graceful  (apache再起動)
/etc/init.d/httpd configtest
/etc/init.d/httpd graceful


## ファイルを空にする
: > access_log             # サイズが0になる。

echo '' > access_log       # これだとサイズが0にならない。


```

## 現在のシェルを確認
```
echo $SHELL
```
ただし、この環境変数を設定しないシェルもありそれほど信頼できない。
その場合、以下のコマンドで表示できることも。
```
echo $0
```

## 使用可能なシェルの一覧を表示
```
cat /etc/shells
```


## シェルを変更
bash → zsh に変更する場合、以下のコマンド 
```
chsh -s /bin/zsh
```


## bin/sh
bash のシンボリックリンク  

<https://linuxjm.osdn.jp/html/GNU_bash/man1/bash.1.html>  
 -c オプション - コマンドが string から読み込まれます。 string の後に引き数があれば、これらは 位置パラメータ (positional parameter: $0 から始まるパラメータ) に代入されます。  
　  
→ 引数が必要な時に使え、って事？


## sh
最も基本的なシェル  

## シェルの種類
<https://xtech.nikkei.com/it/article/COLUMN/20080919/315097/>  
シェルは大きく分けて，sh系（sh，ksh，bash，zsh）とcsh系（csh，tcsh）の2種類がある。  

|  シェル   |  特徴                                                                |
|:-------|:-------------------------------------------------------------------|
|  sh    |  最も基本的なシェル。ここから bash や ksh に派生。                                    |
|  bash  |  多くの Linux ディストリのデフォルト                                             |
|  ksh   |  bash と親が同じらしい                                           |
|  ash   |  軽量。組み込み Linux に採用。Docker ベースイメージによく使われる Alpine もこれ。Bashより機能が少ない。  |
|  dash  |  Debian系で使われる軽量 shell。                                              |
|  zsh   |  Catalina 以降の Mac のデフォルト                                           |
|  fish  |  凄いらしいけど、あんま使ってない。                                                 |
|  csh   |  C言語に似てる。                                                          |
|  tcsh  |  csh から派生                                                          |


#### シェル実行時のエラー
```
bash-4.2# ./server-setup
bash: ./server-setup: /bin/bash^M: bad interpreter: No such file or directory
```
改行コードの差異によるもの
```
cat -e <対象のファイル>
改行が「^M$」となっている。

sed -i 's/\r//' <対象のファイル>
```


## 重複している行を削除
uniq

-c  各行の前に出現回数を出力（重複した数を表示する）
-u  重複していない行だけを出力
-d  重複した行だけを出力

＜使用例＞
sort kaki_20240827_tmp.txt | uniq -c
sort kaki_20240827_tmp.txt | uniq -cd



<https://atmarkit.itmedia.co.jp/ait/articles/1611/14/news021.html>


## DNS_command
<https://kakisoft.github.io/MiscellaneousDocs/InfraAndEnv_Tool_Service/DNS/DNS_command/>


## yum
<https://kakisoft.github.io/MiscellaneousDocs/Linux/centos_memo/>


## ssh
Move to MyDevEnv
