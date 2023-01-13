## google検索オプション
設定→
特定キーワードを含めない、

## Googleセーフブラウジング
https://transparencyreport.google.com/safe-browsing/search?url=http:%2F%2Fgloyah.net%2F-36721LNUE%2FCF9L%3Frndad%3D1986475809-1563273758

_______________________________________________________________________________________
_______________________________________________________________________________________
# Chrome Developer Tool

## Chrome スーパーリロード（キャッシュもクリア）
Shift ＋ F5

## Developer modeにて、キャッシュしない
Networkタブ→[Disable cache] を ON  
※Developer Toolsが起動しているとき、cacheが無効

## キャッシュの消去
上段の urlが表示されている列の更新ボタンにて、右クリック→[キャッシュの消去とハード再読み込み]

## レスポンスヘッダの確認
Network → ALL → ファイル名をクリック → Response Headers確認。  
Cache-Control などのステータスを確認できる。  

## 要素を指定
デバッグ画面の左上のボタンにて、要素を選択可。



## ブラウザの画面を編集
コンソールにて、
```
document.designMode = 'on';
```

## curlコマンドとしてコピー
Networkタブ -> All -> Name  -> 項目を選択して右クリック -> Copy -> Copy as cURL


## CSS の状態ごとの class （選択中・クリック時 等）
:how > ":active", ":focus" 等のイベント

![alt](chrome_css_active.png)
