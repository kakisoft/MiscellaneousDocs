

## _redirects
というファイルを作成。  
（公開するサイトのルート直下）  

「How to redirect the default Netlify subdomain to your primary domain」のボタンクリック一発。

保存先は、  
「static」
の下になるっぽい。
```
https://kaki-playground.netlify.com/* https://kaki-playground.com/:splat 301!
```

管理画面から netlify.com の URLは普通に踏める？
ここからは、リダイレクトが働かない。

_________________________
```
kaki-playground.netlify.com

kaki-playground.com
```

________________________________________________________________
## 動作確認はここで出来る。
<https://play.netlify.com/redirects>

________________________________________________________________
## Netlifyを独自ドメインで使うときにやっておくべきリダイレクトの設定
<https://diwao.com/2017/07/netlify-redirect-settings-for-original-domain.html>


