## 設定確認
crontab -l

## 編集
crontab -e

## 書式（書き方）
```
min hour day month youbi ＜command＞
（※ 0 or 7 が日で、1 が月、2 が）


＜例＞
毎朝 7 時に実行したい場合、
0 7 * * * ＜command＞


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


## 参考
https://www.server-memo.net/tips/crontab.html  
