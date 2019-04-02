# mod_rewrite モジュール

## RewriteRuleディレクティブ

書き換えのルールを決めるディレティブ。パターンで一致した値を置換文字列で書き換えます。
条件パターンはPerl互換の正規表現で指定する。

```
（書式）

RewriteRule 条件パターン 置換文字列 [フラグ]
```

## RewriteCondディレクティブ

書き換えの条件を指定する。この条件に一致した場合だけ書き換えが行われる。

```
（書式）

RewriteCond テスト文字列 条件パターン オプション


例）ファイルが存在する場合、後に続くパターンで書き換えを行う
RewriteCond %{REQUEST_FILENAME} !-f
```


## 参考サイト
### Apacheのmod_rewriteモジュールの使い方を徹底的に解説
https://oxynotes.com/?p=7392









## 設定有効化
```
/etc/httpd/conf/httpd.conf


vi /etc/httpd/conf/httpd.conf

（追加）
LoadModule rewrite_module modules/mod_rewrite.so
```

## 記述例
```
RewriteEngine on
RewriteCond %{HTTP_HOST} ^(viral-community\.com)(:80)? [NC]
RewriteRule ^(.*) http://●●●●●.com/$1 [R=301,L]

# 「viral-community.com」ドメインにアクセスしたら、「●●●●●.com」ドメインへリダイレクト
```
## 解説
```
● RewriteEngine on 
「Mod_Rewrite」機能の有効化



● RewriteCond
次の「RewriteRule」を実行するかどうかの条件文になります。

「RewriteCond」の条件を通れば、次の「RewriteRule」は実行され、通らなければ実行はされません。

「RewriteCond　A　B 」となり、A と B がマッチすれば、次の「RewriteRule」が実行されます。

[NC]・・・RewriteCondのオプション。[NC]は、大文字小文字を区別しない。




● RewriteRule
URL変更（リダイレクト）を行うルールの定義文。

「RewriteRule　A　B 」、ユーザーからリクエストのあったURLが「A」であれば、「B」のURLへリダイレクト。


^(.*)・・・すべて正規表現。”任意文字の連続”。（「.*」 の組み合わせはよく使われる）。要は、どのようなURLでもOK！

http://●●●●●.com/$1・・・リダイレクト先のURL。
$1 は、同じ行で使われている「正規表現の()で括った部分に、マッチした文字列」を参照するといった意味になります。

[R=301,L]・・・RewriteRule のオプション。
今回は、二つ「R=301」と「L」が指定されています。
「R=301」のRとは ”リダイレクトのR” で、「R=301」とする事で、301リダイレクトを指定する事になります。
また、301を指定しない場合（「R」のみの場合）は、302リダイレクトとなります。

「L」ですが、こちらは ”LastのL” となり、（「L」が指定されている）RewriteRuleの条件にマッチした場合、
以降のRewriteRuleを処理しない事を意味します。
```

_________________________________________________________________________________________
_________________________________________________________________________________________
# 常時 SSL化

```
# BEGIN SSL CONF
RewriteEngine On
RewriteCond %{HTTPS} !on
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [R=301,L]
# END SSL CONF
```

#### .htaccess   FULL
```
RewriteEngine On
RewriteCond %{HTTPS} !on
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [R=301,L]

SetEnvIf Request_URI ".*" Ngx_Cache_NoCacheMode=off
SetEnvIf Request_URI ".*" Ngx_Cache_StaticMode

# BEGIN WordPress
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>

# END WordPress
```
