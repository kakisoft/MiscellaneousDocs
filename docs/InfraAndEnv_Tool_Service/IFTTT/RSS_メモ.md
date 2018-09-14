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

itemタグ内の link
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