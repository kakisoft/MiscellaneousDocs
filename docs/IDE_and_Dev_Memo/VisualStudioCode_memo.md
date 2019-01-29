vsCode
# Visual Studio Code メモ

#### ショートカット

|　　操作                                |　　キー                                   |
|:--------------------------------------|:-----------------------------------------|
| 定義へ移動                             |  Ctrl + マウスホバー                      |
| 定義へ移動                             |  F12（右クリック→定義へ移動）               |
| 定義へ移動した後、元の場所に戻る         |  Shift + F12                             |
| 変数の参照元を検索                      |  Shift + F12   その後、↑↓でスクロール。    |
| 指定の行番号へ移動                      |  Ctrl + p ⇒ :（数字）                    |
| シンボルへ移動(「:」でグループごと)      |  Ctrl + Shift + o                         |
| 矩形選択                               |  Shift + Alt + ドラッグ                   |
| ファイル名を検索                        | Ctrl + p                                 |
| グローバル検索                          |  Ctrl Shivt + f                           |
| 正規表現検索                            |  Ctrl + f の後、右のマークを選択           |
| 条件を指定して検索                       |  Ctrl + Shiftf + j                      |
| 置換                                   |  Ctrl + f ⇒ 左の ▷ マーク                |
| コメントアウト                          |  Ctrl + /                                 |
| 警告・エラーを表示                      |  Ctrl + Shift + m                         |
| 画面分割                               |  Ctrl + \                                 |
| インテリセンス                         |  Ctrl + Space                             |
| タブを閉じる                           |  Ctrl + w                                |
| タブ切替                               |  Ctrl + ↑ or ↓                           |
| ターミナルを表示                        |  Ctrl + Shift @                           |

  
　  
　  
　  
追加のキー設定は、
```
ファイル→基本設定→キーボードショートカット
「高度なカスタマイズを～」keybinding.json
```
（例）
```
    // 大文字に変換
    {
        "key": "ctrl+u",
        "command": "editor.action.transformToUppercase"
    },
    // 小文字に変換
    {
        "key": "ctrl+shift+u",
        "command": "editor.action.transformToLowercase"
    }
```

# プラグイン

### Live HTML Previewer
HTMLのプレビュー  
横にプレビューを表示　　Ctrl + q → s  
エディタ全体にプレビューを表示　　Ctrl +q → f  
ブラウザで表示　Ctrl +q → w  

### スニペット
HTML Snippets

### インデントのハイライト
indent-rainbow

### PHP
公式のやつを２つぐらいブチ込む程度でいい感じ。（雑）

