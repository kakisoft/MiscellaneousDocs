## 設定確認
crontab -l

## 編集
crontab -e

## 書式（書き方）
```
min hour day month youbi ＜command＞
（※ 0 or 7 が日で、1 が月、2 が）


＜例＞
毎時 30分に実行したい場合、
30 */1 * * * ＜command＞

※「30 * * * *」だと、うまく動かない事がある？ こっちでもOK。


毎朝 7 時に実行したい場合、
0 7 * * * ＜command＞

１時間ごとに実行したい場合
* */1 * * * ＜command＞

１分おきに実行したい場合
*/1 * * * * ＜command＞

```

## 注意点
```
何かを実行させる時は、絶対パスで指定しておいた方がいい。

「which php」等で検出。


また、cron で設定する前に、そのコマンドがちゃんと実行できるかどうかを
コマンドラインで確認しておこう。
```

## 削除
```
crontab -r [username]

一部だけ削除する場合、-eオプションで編集し、削除。
```


## 作成例
```
crontab -e
15 * * * * /usr/bin/php /vagrant/shared/www/PracticePHP/06_twitter_bot/bot.php


30 * * * * /usr/bin/php /vagrant/shared/www/PracticePHP/06_twitter_bot/bot.php
```


## ユーザを指定して実行
<https://qiita.com/katsukii/items/d5f90a6e4592d1414f99>  
```
0 0 * * * root sh /usr/local/bin/backup.sh
```
フォーマット
```
# Example of job definition:
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  * user-name command to be executed
```


## 参考
<https://www.server-memo.net/tips/crontab.html>  


