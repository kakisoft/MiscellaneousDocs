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
nginx.conf  
default.conf  
```
/etc/nginx/nginx.conf
/etc/nginx/fastcgi_params

/etc/nginx/conf.d
             ┗ default.conf
```

### nginx.conf
```conf
user  nginx;
worker_processes  1;

error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;


events {
    worker_connections  1024;
}


http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for"';

    access_log  /var/log/nginx/access.log  main;

    sendfile        on;
    #tcp_nopush     on;

    keepalive_timeout  65;

    #gzip  on;

    include /etc/nginx/conf.d/*.conf;
}
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
       ┗ conf.dx
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


___________________________________________________________________________
___________________________________________________________________________
___________________________________________________________________________

#### etc\nginx\default.conf : location
```
location ~ [^/]\.php(/|$) {


/xxx.php
/xxx.php/
```

#### etc\nginx\default.conf : location : fastcgi_split_path_info
```
fastcgi_split_path_info ^(.+?\.php)(/.*)$;


xxx.php/xxx
```

#### !-f
ファイルの存在 -f ,!-f  
http://www2.matsue-ct.ac.jp/home/kanayama/text/nginx/node73.html
```
if (!-f $document_root$fastcgi_script_name) {
    return 404;
}
```

##### /etc/nginx/fastcgi_params
```
fastcgi_param  DOCUMENT_ROOT      $document_root;
fastcgi_param  SCRIPT_NAME        $fastcgi_script_name;

-------------------------------------------------------------
var_export($_SERVER);

'DOCUMENT_ROOT' => '/var/www/src/public',
'SCRIPT_NAME' => '/server-params.php',
```


