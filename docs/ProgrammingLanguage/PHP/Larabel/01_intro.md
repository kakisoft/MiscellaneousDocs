<https://laravel.com/>

## 仮想マシン
<https://laravel.com/docs/5.1/homestead>  
<https://readouble.com/laravel/5.4/ja/homestead.html>
```
vagrant box add laravel/homestead
```


## インストール
```
インストールというよりも、ひな形作成に近いのか？

＜Composerのインストールをした後＞
php composer.phar create-project --prefer-dist laravel/laravel (プロジェクト名)
php composer.phar create-project --prefer-dist laravel/laravel myblog


公式が配布している Vagrantマシンなら、これで行ける。
composer create-project --prefer-dist laravel/laravel (プロジェクト名)
composer create-project --prefer-dist laravel/laravel myblog
```

## バージョン確認
```
php artisan --version
```


