## 「location /」
```
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



