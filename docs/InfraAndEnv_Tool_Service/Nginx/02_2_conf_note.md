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

