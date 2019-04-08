## CORS
http://dotnsf.blog.jp/archives/1063051117.html  

ajax 使った場合
```
Access to XMLHttpRequest at 'https://geoapi.heartrails.com/api/json' from origin 'null' has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource.
```

受け側に、```「Access-Control-Allow-Origin:*」``` とか無い限り、エラーとなる？
どうやら、ブラウザの制限っぽい。
なので、curl で叩く分にはOK。


## curl にて確認
-i オプション
```
（例）
curl -i http://challenge-your-limits.herokuapp.com/call/me
curl -i https://geoapi.heartrails.com/api/json
```
```
HTTP/1.1 200 OK
Server: Cowboy
Date: Mon, 08 Apr 2019 06:58:01 GMT
Connection: keep-alive
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
Etag: W/"1199169b9b658abdab303116c76dd78a"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1d585b97-8e30-4a11-855e-745d1b82a4ce
X-Runtime: 0.002078
Transfer-Encoding: chunked
Via: 1.1 vegur

------------------------------------------------------
HTTP/2 200 
date: Mon, 08 Apr 2019 06:57:27 GMT
content-type: application/json; charset=utf-8
server: nginx
etag: "78ebdf8076e9117cd3b7398628be9daa"
cache-control: max-age=0, private, must-revalidate
x-ua-compatible: IE=Edge,chrome=1
x-runtime: 0.000610
```


