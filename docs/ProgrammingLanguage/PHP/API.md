```
<?php
$base_url = 'https://qiita.com';

$tag = 'PHP';
$query = ['page'=>'1','per_page'=>'5'];

$response = file_get_contents(
                  $base_url.'/api/v2/tags/'.$tag.'/items?' .
                  http_build_query($query)
            );
// https://qiita.com/api/v2/tags/PHP/items?page=1&per_page=5

// 結果はjson形式で返されるので
$result = json_decode($response,true);
```


```
<?php
$data = [
    'title' => '送信テスト',
    'body' => 'テスト',
];
 
$opts = [
    'http' => [
        'method' => 'POST',
        'header' => implode("\r\n", [ 
            "User-Agent: hogehoge",
            "Accept-Language: ja",
            "Cookie: test=hoge",
        ]),
    ],
    'data' => http_build_query($data)
];
 
$ctx = stream_context_create($opts);
 
$response = file_get_contents('http://example.com/inquiry', false, $ctx);

```

_________________________________________________________________
<http://tototoshi.hatenablog.com/entry/2014/06/10/011223>

```
<?php
$content = json_decode(file_get_contents("http://localhost:5000/api/note/161"));
```

```
<?php
$context = stream_context_create(
    array(
        'http' => array(
            'method'=> 'POST',
            'header'=> 'Content-type: application/json; charset=UTF-8',
            'content' => json_encode(
                array(
                    'title' => 'file_get_contents で POST',
                    'raw' => "file_get_contents で POST\nPHP すごい...\n"
                )
            )
        )
    )
);

file_get_contents('http://localhost:5000/api/note', false, $context);
```

_________________________________________________________________

```
//$posted ：渡すパラメータ（Array）
$url = "http://challenge-your-limits.herokuapp.com/call/me";
//$posted = {"challenge_users":"yama"};
$posted = ["taguchi" => 200];

        $post = http_build_query($posted, "", "&");

        $header = array(
                    'Content-Type: application/x-www-form-urlencoded',
                    'Content-Length: ' . strlen($post)
                );
 
        $context = array(
                    'http' => array(
                            'method' => 'POST',
                            'header' => implode("\r\n", $header),
                            'content' => $post
                        ),
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false
                    )
                );
 

        $data = file_get_contents($url, false, stream_context_create($context));

//$http_response_header
        

echo "<br>=======================<br>";
var_dump($data);
echo "<br>=======================<br>";
var_dump($http_response_header);
echo "<br>=======================<br>";

```




__________________________________________________
```
$posted ：渡すパラメータ（Array）


        $post = http_build_query($posted, "", "&");

        $header = array(
                    'Content-Type: application/x-www-form-urlencoded',
                    'Content-Length: ' . strlen($post)
                );
 
        $context = array(
                    'http' => array(
                            'method' => 'POST',
                            'header' => implode("\r\n", $header),
                            'content' => $post
                        ),
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false
                    )
                );
 
        $data = file_get_contents($url, false, stream_context_create($context));

$http_response_header
        
      
```


