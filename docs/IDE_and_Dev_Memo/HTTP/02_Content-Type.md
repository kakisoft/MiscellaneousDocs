<https://www.yoheim.net/blog.php?q=20171201>  

<https://www.wakuwakubank.com/posts/799-it-content-type-content-disposition/>  


以下は、MIME Type が text/html で、送信内容が html であることを表している。  
```
Content-Type:text/html; charset=UTF-8

タイプ/サブタイプ
```

## MIME Type
```
text/plain       ： テキストファイル
image/png        ： PNG画像
application/pdf  ： PDFファイル
application/json ： JSONファイル

etc..
```
その他の形式  
<https://developer.mozilla.org/ja/docs/Web/HTTP/Basics_of_HTTP/MIME_types>  



### application
他のタイプに明確に当てはまらない、あらゆる種類のバイナリデータです。  
何らかの方法で実行されたり解釈されたりするデータ、または利用するのに特定のアプリケーションや特定の種類のアプリケーションを必要とするバイナリデータのどちらかです。  
汎用的なバイナリデータ (または本当のタイプが不明なバイナリデータ) は application/octet-stream です。他のよくある例として、 application/pdf, application/pkcs8, application/zip があります。



## multipart/form-data
multipart/form-dataは、前述の通り複数の種類のデータを一度に扱える形式で、主な利用シーンはHTMLフォーム。  
特にファイルアップロードでよく利用されます。  

HTMLフォームで複合型を使うには、formタグの属性でenctype="multipart/form-data"を指定する。  
```html
<!--multipart/form-data形式でPOSTする例-->

<form method="POST" action="/upload" enctype="multipart/form-data">
    <input type="text" name="message" value="Hello"/><br>
    <input type="file" name="file"/><br>
    <input type="submit" value="SUBMIT"/>
</form
```
_______________________________________________________________________
## フォーム送信で使うContent-Type
通常、HTTPのPOSTメソッドでフォームデータを送信するとき application/x-www-form-urlencoded を利用します。  

しかし、ファイル送信が必要な場合は、異なるContent-Typeを指定します。  

ファイル送信では、1つのフォーム名に対して「ファイル名・種類・内容」と 複数の情報 を送信する必要があるのですが、application/x-www-form-urlencoded だと1つのフォーム名に対して1つの情報しか送信できません。  

ファイル送信が必要になったとき multipart/form-data を利用します。  


## Content-Type
リクエストヘッダーで指定するときは、サーバーに送信するデータの種類を指定します。  
レスポンスヘッダーで指定するときは、クライアントに返すデータの種類を指定します。  

以下、主なContent-Type。  


|  Content-Type                       |  説明                         |
|:------------------------------------|:----------------------------|
|  application/json                   |  JSONファイル                   |
|  application/octet-stream           |  バイナリファイル                   |
|  application/pdf                    |  PDFファイル                    |
|  application/zip                    |  Zipファイル                    |
|  image/gif                          |  GIFファイル                    |
|  image/jpeg                         |  JPEGファイル                   |
|  image/png                          |  PNGファイル                    |
|  image/svg+xml                      |  SVGファイル                    |
|  text/plain                         |  テキストファイル                   |
|  text/csv                           |  CSVファイル                    |
|  text/html                          |  HTMLファイル                   |
|  text/css                           |  CSSファイル                    |
|  text/javascript                    |  JavaScriptファイル             |
|  audio/mpeg                         |  MPEG形式の音声または音楽ファイル         |
|  video/mp4                          |  (動画データ)MP4ファイル             |
|  application/x-www-form-urlencoded  |  HTTPのPOSTメソッド(フォームデータの送信)  |
|  multipart/form-data                |  HTTPのPOSTメソッド(ファイルアップロード)  |


