https://flaviocopes.com/netlify-functions/



## functions/test.js
```js
exports.handler = (event, context, callback) => {
    callback(null, {
      statusCode: 200,
      body: 'No worries, all is working fine!'
    })
  }
```

## netlify.toml
```
[build]
functions = "./functions"
```

## デプロイ後の設定確認
```
Settings -> Functions
```

## エンドポイント
```
https://YOURSITENAME.netlify.com/.netlify/functions/test.


.netlify/functions/
のURLは、固定？
```


## コード解説
```
event is an object that contains data on the request
eventはリクエストに関するデータを含むオブジェクトです。


context contains the user information when using Identity for user authentication
ユーザー認証にIDを使用する場合、contextにユーザー情報が含まれます


callback is a function we can use to create a response
コールバックはレスポンスを作成するために使用できる関数です。

------------------------------------------------------------

To access the request parameters, use the event object:
リクエストパラメータにアクセスするには、イベントオブジェクトを使用します。

|       REQUEST_PRRAMATER       |          EVENT_OBJECT             |
|:------------------------------|:----------------------------------|
|  event.path                   |  the request path                 |
|  event.httpMethod             |  the request HTTP method          |
|  event.headers                |  the request headers              |
|  event.queryStringParameters  |  the request query parameters     |
|  event.body                   |  the request body in JSON format  |
```
__________________________________________________________________
__________________________________________________________________
__________________________________________________________________
## 公式マニュアル
<https://www.netlify.com/docs/functions/>  
<https://functions-playground.netlify.com/>

## Node.js 過去バージョン
<https://nodejs.org/en/download/releases/>




_______________________________________________________________________
## Netlify Function
<https://ottan.xyz/netlify-functions-aws-lambda-serverless-20190115/>


