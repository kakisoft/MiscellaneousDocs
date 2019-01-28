# Google Chrome Developer Tools
https://developers.google.com/web/tools/chrome-devtools/?hl=ja


## ソースを表示
command + option + u

## デベロッパーツール起動
command + option + i

## Webページ内の要素を検証
デベロッパーツールの左上のマークを押す -> ページの要素を選択

# Elements パネル

### 編集
```
移動、削除、編集、id や class を変更
右クリック -> Edit as HTML
```

### css/styke
```
Elements  -> Styles 
タブにて、css の内容を確認できる

css ソースファイル名も確認可。

「Inherited」と書かれたスタイルは、親要素からの。

□チェックボックスの on/off で、スタイルの有効/無効 を設定できる。

paddidng/mergin の内容を確認できる。

右上の「+」マークで、スタイルの追加ができる。

「:hov」で、ホバー時の挙動とか。


### Computed タブ
にて、まとめて見る事ができる。

### Event Listeners タブ


### DOM Breakpoints

```

# Network パネル
どのファイルが、どのタイミングで呼ばれたかを教えてくれる。  
読み込みが遅い時に、原因調査の足がかりになる事が。

```
Initiator    どこから読み込まれたか

ヘッダ右クリックで、その他の情報を表示できる。
```
各ファイルをクリックすると、詳細を見ることできる。  
画像だったり、jsファイルだったり。

```
左上の「○」の隣の「●（道路標識の止まれみたいなの）」を押すと、クリアできる。


Filter    特定の情報だけを表示。js だけ、css だけ、etc...

preserve log    通常、リロードするとログは消えるが、チェックを入れているとログを残したままにする。

☆右クリックで、ブラウザのキャッシュや cookie を消すメニューを表示できる。
```

# Sources パネル
javascript や css が編集可。
```
変更した内容を保存可。
保存履歴を見る事ができる。

編集したファイル -> 右クリック -> Local modification

編集した内容を保存したい場合、「Save As」
```
**【 JavaScript 】**
```
エラー：　　右上の●に、エラーの数が出る。クリックすると、その内容を表示。

ブレークポイントを設置可能。
変数名にカーソルを合わせると、中身を見る事が出来る。

ステップイン、ステップオーバー可能。（上段：右の矢印のアイコン）
```

# Performance


# Memory


# Application
旧名：Resouces  
```
Local Storage
Session Storage
Cookies
```

# Audits
パフォーマンスについての提案


# Console
JavaScript をそのまま試す事ができる。  

左上の●（止まれマーク）で、現在出力中の内容をクリア。
```
Elementsパネルと一緒に使う。
選択→
$0        → 現在洗濯中の要素を表示
$1        →１つ前
$('h1')
$('p')    →最初のp
$$('p')    →全部のp

copy($0)   →クリップボードにコピーされる
```
## _
```js
console.table({ val1, val2, val3 })
```
