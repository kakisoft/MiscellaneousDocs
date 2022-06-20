## ref

#### PHP FastCGI Example
<https://www.nginx.com/resources/wiki/start/topics/examples/phpfcgi/>  

##### PHP FastCGI の例
<https://mogile.web.fc2.com/nginx_wiki/start/topics/examples/phpfcgi/>  

#### Qiita : nginx fastcgi_params を include する箇所、割と皆間違ってるよね？
<https://qiita.com/kotarella1110/items/f1ad0bb40b84567cea66>  

#### 変数一覧
<http://nginx.org/en/docs/http/ngx_http_core_module.html#variables>

#### stackoverflow : What is the correct setting of Nginx's fastcgi_param SCRIPT_FILENAME? [duplicate]
<https://serverfault.com/questions/502776/what-is-the-correct-setting-of-nginxs-fastcgi-param-script-filename>


## 値の確認
```php
<?
php var_export($_SERVER);
```

### /etc/nginx/fastcgi_params
```

fastcgi_param  QUERY_STRING       $query_string;
fastcgi_param  REQUEST_METHOD     $request_method;
fastcgi_param  CONTENT_TYPE       $content_type;
fastcgi_param  CONTENT_LENGTH     $content_length;

fastcgi_param  SCRIPT_NAME        $fastcgi_script_name;
fastcgi_param  REQUEST_URI        $request_uri;
fastcgi_param  DOCUMENT_URI       $document_uri;
fastcgi_param  DOCUMENT_ROOT      $document_root;
fastcgi_param  SERVER_PROTOCOL    $server_protocol;
fastcgi_param  REQUEST_SCHEME     $scheme;
fastcgi_param  HTTPS              $https if_not_empty;

fastcgi_param  GATEWAY_INTERFACE  CGI/1.1;
fastcgi_param  SERVER_SOFTWARE    nginx/$nginx_version;

fastcgi_param  REMOTE_ADDR        $remote_addr;
fastcgi_param  REMOTE_PORT        $remote_port;
fastcgi_param  SERVER_ADDR        $server_addr;
fastcgi_param  SERVER_PORT        $server_port;
fastcgi_param  SERVER_NAME        $server_name;

# PHP only, required if PHP was built with --enable-force-cgi-redirect
fastcgi_param  REDIRECT_STATUS    200;
```


