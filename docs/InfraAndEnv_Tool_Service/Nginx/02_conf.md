最小構成
### docker-compose.yml
```
version: '3'
services:
  nginx:
    image: nginx:1.15.6
    container_name: nginx
    ports:
      - "8000:80"
```
http://localhost:8000/

```
Welcome to nginx!
```

## コンフィグ
```
/etc/nginx/conf.d
             ┗ default.conf
```

### default.conf
```conf
server {
    listen       80;
    server_name  localhost;

    #charset koi8-r;
    #access_log  /var/log/nginx/host.access.log  main;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    #error_page  404              /404.html;

    # redirect server error pages to the static page /50x.html
    #
    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }

    # proxy the PHP scripts to Apache listening on 127.0.0.1:80
    #
    #location ~ \.php$ {
    #    proxy_pass   http://127.0.0.1;
    #}

    # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
    #
    #location ~ \.php$ {
    #    root           html;
    #    fastcgi_pass   127.0.0.1:9000;
    #    fastcgi_index  index.php;
    #    fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;
    #    include        fastcgi_params;
    #}

    # deny access to .htaccess files, if Apache's document root
    # concurs with nginx's one
    #
    #location ~ /\.ht {
    #    deny  all;
    #}
}
```


## フォルダ構成
```
/etc/nginx
       ┗ conf.d
       ┗ fastcgi_params
       ┗ koi-utf
       ┗ koi-win
       ┗ mime.types
       ┗ modules -> /usr/lib/nginx/modules
       ┗ nginx.conf
       ┗ scgi_params
       ┗ uwsgi_params
       ┗ win-utf
```


## Welcome ページ
```
/usr/share/nginx/html
                   ┗ 50x.html
                   ┗ index.html
```





