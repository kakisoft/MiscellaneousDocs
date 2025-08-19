https://chatgpt.com/c/68a3de4c-197c-832d-8042-28898858e9eb

____________________________________________________________________________
# MySQL設定_コンフィグファイルの構成


```
ubuntu@ip-172-31-1-39:/etc/mysql$ tree
.
├── conf.d
│   ├── mysql.cnf
│   └── mysqldump.cnf
├── debian-start
├── debian.cnf
├── my.cnf -> /etc/alternatives/my.cnf
├── my.cnf.fallback
├── mysql.cnf
└── mysql.conf.d
    ├── mysql.cnf
    └── mysqld.cnf
```

 * /etc/mysql/my.cnf
 * /etc/mysql/conf.d/mysql.cnf
 * /etc/mysql/conf.d/mysqldump.cnf
 * /etc/mysql/mysql.cnf
 * /etc/mysql/mysql.conf.d/mysql.cnf
 * /etc/mysql/mysql.conf.d/mysqld.cnf


## /etc/mysql/my.cnf -> /etc/alternatives/my.cnf
ハブ。
!includedir /etc/mysql/conf.d/ と !includedir /etc/mysql/mysql.conf.d/ が書かれていて、他の設定ファイルを読み込む。
自分自身に設定を書くよりも「他ディレクトリをまとめて読み込む入口」として機能。

```conf
#
# The MySQL database server configuration file.
#
# You can copy this to one of:
# - "/etc/mysql/my.cnf" to set global options,
# - "~/.my.cnf" to set user-specific options.
#
# One can use all long options that the program supports.
# Run program with --help to get a list of available options and with
# --print-defaults to see which it would actually understand and use.
#
# For explanations see
# http://dev.mysql.com/doc/mysql/en/server-system-variables.html

#
# * IMPORTANT: Additional settings that can override those from this file!
#   The files must end with '.cnf', otherwise they'll be ignored.
#

!includedir /etc/mysql/conf.d/
!includedir /etc/mysql/mysql.conf.d/
```

## /etc/mysql/conf.d/mysql.cnf
クライアント（mysql コマンド）用設定。
デフォルト文字コードや接続ユーザを省略したい時に書く。
初期状態ではコメントだけ。サーバーの動作には影響しない。


「/etc/mysql/conf.d/mysql.cnf」と「/etc/mysql/mysql.conf.d/mysql.cnf」で、役割が被っている。
Ubuntu の場合、「/etc/mysql/mysql.conf.d/mysql.cnf」を使う。

```conf
[mysql]
```

## /etc/mysql/conf.d/mysqldump.cnf
mysqldump コマンド専用の設定。
ダンプ時の文字コードやオプションをデフォルト指定。


```conf
[mysqldump]
quick
quote-names
max_allowed_packet      = 16M
```

## /etc/mysql/mysql.cnf
クライアント用の全体設定。歴史的経緯で残っているだけ。基本、使われない。
内容は空かコメントだけのことが多い。
実質は mysql.conf.d/mysql.cnf と役割は同じ。


```conf
#
# The MySQL database server configuration file.
#
# You can copy this to one of:
# - "/etc/mysql/my.cnf" to set global options,
# - "~/.my.cnf" to set user-specific options.
#
# One can use all long options that the program supports.
# Run program with --help to get a list of available options and with
# --print-defaults to see which it would actually understand and use.
#
# For explanations see
# http://dev.mysql.com/doc/mysql/en/server-system-variables.html

#
# * IMPORTANT: Additional settings that can override those from this file!
#   The files must end with '.cnf', otherwise they'll be ignored.
#

!includedir /etc/mysql/conf.d/
!includedir /etc/mysql/mysql.conf.d/
```

## /etc/mysql/mysql.conf.d/mysql.cnf
クライアント（mysql コマンド）用設定。
/etc/mysql/conf.d/mysql.cnf と同様に、文字コードや接続先を記載可能。


「/etc/mysql/conf.d/mysql.cnf」と「/etc/mysql/mysql.conf.d/mysql.cnf」で、役割が被っている。
Ubuntu の場合、「/etc/mysql/mysql.conf.d/mysql.cnf」を使う。


```conf
#
# The MySQL database client configuration file
#
# Ref to https://dev.mysql.com/doc/refman/en/mysql-command-options.html

[mysql]
```


## /etc/mysql/mysql.conf.d/mysqld.cnf
☆チューニング☆

サーバー（mysqld）用設定の本体。
チューニングパラメータを書く。



## その他メモ
設定ファイル＝my.cnf と呼ばれることが多い。

