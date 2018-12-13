## 起動時エラー
ライブラリが不足している。
```
ImportError: No module named pytz

https://github.com/odoo/odoo/blob/10.0/requirements.txt

※バージョンごと
```

## 起動後のエラー
エラーの内容（ブラウザに常に表示されている）
```
The style compilation failed, see the error below. Your recent actions may be the cause, please try reverting the changes you made.

Could not execute command 'sassc'This error occured while compiling the bundle 'web.assets_common' containing:
    - /web/static/lib/bootstrap/scss/_functions.scss
    - /web/static/lib/bootstrap/scss/_mixins.scss
```
https://www.odoo.com/forum/help-1/question/how-to-install-sassc-139497
```
（解決策）
pip3 install libsass==0.12.3
```
