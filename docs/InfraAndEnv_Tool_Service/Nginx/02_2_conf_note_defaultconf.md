default.conf

## 「location /」
```conf
    location / {
        root   /var/www/src/public;
        index  index.php index.html;

        # try_files $uri $uri/ /index.php$is_args$args;
    }

    # こんな感じで、「location /」を複数回書くと、エラーとなる。
    # （起動したコンテナがすぐ落ちる。docker ps で確認。）
    location / {
        try_files $uri $uri/ /index.php$is_args$args;
    }
```

## default.conf ： root と index の位置
初期値
```conf
server {
    listen       80;
    server_name  localhost;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
```
root と index は、「location /」の外に出した方がよさそう
```conf
server {
    listen       80;
    server_name  localhost;

    root   /usr/share/nginx/html;
    index  index.html index.htm;
}
```


## PHP実行環境（php-fpm）
```conf
    location ~ \.php$ {
       fastcgi_pass   php:9000;
       fastcgi_index  index.php;
       fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;
       include        fastcgi_params;
    }
```
デフォルト
```conf
    # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
    #
    location ~ \.php$ {
        root           html;
        fastcgi_pass   127.0.0.1:9000;
        fastcgi_index  index.php;
        fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;
        include        fastcgi_params;
    }
```
fastcgi_pass ：「コンテナ名：ポート番号」に変更。（上記では、コンテナ「php」。php-fpm のデフォルトポートは 9000）  
fastcgi_param ：「/scripts」->「$document_root」に修正。  

