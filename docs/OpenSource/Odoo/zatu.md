```
# 起動時エラー

ImportError: No module named pytz

https://github.com/odoo/odoo/blob/10.0/requirements.txt


requirements.txt
に、使用しているライブラリが記述されている。

### インストール
```
sudo python2 -m pip install pytz==2016.7
```



## PyCharmを Python 2.7 で起動
File → Settings → Project:nrq01 → Project Interpreter
→ show all → Python 2.7 を検索


あとは、
Run → Edit Configrations → Python interpreter
にて、Python 2.7 を選択。
```
