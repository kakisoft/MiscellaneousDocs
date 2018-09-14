## RSS チェックサイト
<https://validator.w3.org/feed/>
```
URI でチェックできたり、配信する内容をコピペしてチェックする事ができます。
```

## 構造
<http://phpjavascriptroom.com/?t=topic&p=rss_format>


## メモ
```
【 必須 】
A top-level feed title and a unique link
A GUID and date for each entry

itemタグ内の link(これが無いと、登録時に IFTTTがエラーが出るケースがある。RSSのURLによってはスルーされたりと、よくわからない。)
チェックが走るのは初回登録時のみで、以降は linkタグがない itemを追加しても問題なく認識されたりと、何だかよくわからない動きをする。


【注意点】
・itemごとのguidは、ユニークな値にしなければ、投稿されない模様。
・titleはユニークであること
・description の重複は？⇒重複OK


itemの追記は、上下のどちらでもいい。



SS2.0のguidは、isPermaLink="false"が指定されていない限り、
(isPermaLink="true"、もしくは、無指定の場合)
エントリのリンクとして使ってよい。


<guid isPermaLink="false">
<guid isPermaLink="true">
trueにして URL書いても、認識されない？
・・・と思いきや、ちゃんと認識された。
ただ、リンク名が「ift.tt/2Nbjweo 」と、変な名前になってる。


```


## 手動チェック
```
Check Now

それでも RSSはリアルタイムに更新されない。

構文に記述ミスがあるから投稿されないのか、追記した内容が配信済みと判断されて投稿されてないのか判別がつかないので、
ちょっと苦労する。

```



## メッセージ
```
My RSS feed is not working correctly
The RSS feed service is a great way to pipe a blog or website into IFTTT, and build Applets with it. But not every feed will do. 

RSS feeds used in the Feed service have a few requirements:

A top-level feed title and a unique link

A GUID and date for each entry

Valid RSS or Atom syntax

You can validate your feed with an online tool.

```

## 拡張子
```
拡張子は、xml、rss 何でもいいみたい。
```

## サンプル
```xml
<?xml version='1.0' encoding='UTF-8'?>
<rss version="2.0">
<channel>
<title>RSS Title</title>
<link>https://www.sitepublis.net/</link>
<description>HeadDiscription</description>
<language>ja</language>

<item>
<title>title18</title>
<link>https://news.yahoo.co.jp/pickup/629676</link>
<guid isPermaLink="false">yahoo/news/topics/33333333333333333333321321</guid>
<description>description18</description>
</item>

<item>
<title>test01</title>
<link>https://news.yahoo.co.jp/pickup/6296785</link>
<pubDate>Thu, 13 Sep 2018 14:12:16 +0900</pubDate>
<guid isPermaLink="false">yahoo/news/topics/33333333333333333333321313</guid>
</item>

</channel>
</rss>


```