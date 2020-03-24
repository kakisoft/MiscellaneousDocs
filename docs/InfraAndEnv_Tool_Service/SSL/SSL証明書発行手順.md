
## SSL証明書発行手順
<http://d.hatena.ne.jp/install-memo/20110906/1315291837>  



 1. KEYファイルとCSRファイルを作る
 2. それらを証明書会社に送る
 3. 証明書会社から送られた CRTファイルをチェック

## 秘密鍵ファイル
次のようなヘッダ・フッタ。
```
-----BEGIN RSA PRIVATE KEY-----
-----END RSA PRIVATE KEY-----
```

### KEYファイルが正しいかどうか確認
```
openssl rsa -in ssl_example_jp.key -check -noout
verify OK
```

## CSRファイルとは
SSL通信に利用する公開鍵暗号系の公開鍵に、コモンネームなどの情報を付加したもの。
```
-----BEGIN CERTIFICATE REQUEST-----
-----END CERTIFICATE REQUEST-----
```
### 確認コマンド
```
openssl req -in ssl_example_jp.201109.csr -verify -noout
verify OK
```

## コモンネーム（HTTPS通信を行うFQDN）を調べる
```
openssl req -in ssl_example_jp.201109.csr -text -noout | grep -i CN=
        Subject: C=JP, ST=TOKYO, L=Chiyoda-ku, O=Acme Co. Ltd., CN=ssl.example.jp
```
CN=の後ろがコモンネーム。

## KEYファイルとCSRファイルそれぞれに含まれる公開鍵が同じかどうか確認。
```
$ openssl rsa -in ssl_example_jp.key -pubout -out pubkey1.txt
writing RSA key
$ openssl req -in ssl_example_jp.201109.csr -pubkey -noout -out pubkey2.txt
$ diff pubkey1.txt pubkey2.txt
```

## CRTファイル
SSL証明書会社がCSRファイルに情報を付加して秘密鍵で暗号化したもの。  
サーバ証明書などとも呼ばれます。


