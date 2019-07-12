（例）  

## SSL証明書のインストール（OpenSSL）
```
openssl x509 -text -noout -in /root/work/ssl/${COMMON_NAME}/${COMMON_NAME}.crt |grep -E '(Subject|Not)'
openssl x509 -text -noout -in /root/work/ssl/${COMMON_NAME}/${COMMON_NAME}.cer |grep -E '(Subject|Not)'
openssl rsa -pubout < /root/work/ssl/$COMMON_NAME/${COMMON_NAME}.key |md5sum ;openssl x509 -noout -pubkey < /root/work/ssl/$COMMON_NAME/${COMMON_NAME}.crt | md5sum

mv /root/work/ssl/${COMMON_NAME}/$COMMON_NAME.{crt,cer,key} /usr/local/apache2/ssl/user_ssls/

cd /usr/local/apache2/ssl/user_ssls/
ll | grep $COMMON_NAME

＜2way＞
COMMON_NAME_NOWWW=$(echo $COMMON_NAME | sed 's/www.//')

cp -a /usr/local/apache2/ssl/user_ssls/{www.,}$COMMON_NAME_NOWWW.crt
cp -a /usr/local/apache2/ssl/user_ssls/{www.,}$COMMON_NAME_NOWWW.cer
cp -a /usr/local/apache2/ssl/user_ssls/{www.,}$COMMON_NAME_NOWWW.key
ls -al /usr/local/apache2/ssl/user_ssls/ | grep ${COMMON_NAME_NOWWW}
```




