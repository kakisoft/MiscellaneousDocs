ポスグレのインストール

```
mkdir ws
cd ws


mkdir prj01
cd prj01

※バージョンを指定
git clone --depth 1 -b 11.0 https://github.com/odoo/odoo.git
````

## pycharm
```
pycharm-community

プロジェクトを開く
/home/kaki/ws/prj01

コンフィグファイルをコピー
/debian/odoo.conf
を
プロジェクトのルート

```
## コンフィグファイル編集
（例）
```
options]
; This is the password that allows database operations:
; admin_passwd = admin
db_host = localhost
db_port = False
db_user = kaki
db_password = kaki
addons_path = odoo/addons
;MYCONF
dbfilter = prj01
```
db_host, db_user は、使用するポスグレの設定に準拠。  
dbfilter は、各種プロジェクトごとに変更。


## Pycharm 起動設定
Run → Edit Configrations → Click the [+] の プラスボタンを選択 → Python
```
Script path:    odoo/odoo-bin
Parameters:     --config=odoo.conf --db-filter=prj01

Environment variables:    PYTHONUNBUFFERED=1  （デフォルト）
Python interpreter:       Python 3.6
Interpreter options:      （なし）
Working directory:        /home/kaki/ws/prj01
```
※db-filter は、odoo.conf で設定していてもOK。どっちでも行ける。


## RUN
右上の「▶」ボタンより起動。


## DB manager
```
https://localhost:8069/web/database/manager

DBを作成。
作成後、

https://localhost:8069/web/database/selector
にて、
「set a master password」
→odoo.conf に、パラメータが追加される。
```

## 独自モジュール追加
必要があれば、odoo.conf に追記
```
[options]
addons_path = odoo/addons,prj01-custom
```

