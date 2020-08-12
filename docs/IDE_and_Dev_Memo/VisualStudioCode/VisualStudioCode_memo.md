vsCode
# Visual Studio Code メモ

#### ショートカット

|　　操作                                |　　キー                                       |
|:--------------------------------------|:---------------------------------------------|
| 定義へ移動                             |  Ctrl + マウスホバー                           |
| 定義へ移動                             |  F12（右クリック→定義へ移動）                    |
| 定義へ移動した後、元の場所に戻る(Win)    |  Shift + F12                                 |
| 定義へ移動した後、元の場所に戻る(Mac)    |  control -                                   |
| 変数の参照元を検索                      |  Shift + F12   その後、↑↓でスクロール。          |
| 指定の行番号へ移動                      |  Ctrl + p ⇒ :（数字）                          |
| シンボルへ移動(「:」でグループごと)      |  Ctrl + Shift + o                             |
| 矩形選択                               |  Shift + Alt + ドラッグ                       |
| ファイル名を検索                        | Ctrl + p                                     |
| グローバル検索                          |  Ctrl Shift + f                              |
| 正規表現検索                            |  Ctrl + f の後、右のマークを選択                 |
| 条件を指定して検索                       |  Ctrl + Shiftf + j                           |
| 置換                                   |  Ctrl + f ⇒ 左の ▷ マーク                     |
| コメントアウト                          |  Ctrl + /                                    |
| 警告・エラーを表示                      |  Ctrl + Shift + m                             |
| 画面分割                               |  Ctrl + \                                     |
| インテリセンス                          |  Ctrl + Space                                  |
| タブを閉じる                            |  Ctrl + w                                      |
| タブ切替                               |  Ctrl + ↑ or ↓                                |
| ターミナルを表示                        |  Ctrl + Shift @                                |
| メソッドをリストアップ                   |  Ctrl + Shift + o →  :                         |
| 大文字に置換                           |  範囲指定 → Ctrl + p → > Tranfform to Uppercase  |
| ページ移動（Mac）                       |  Option + Command + ←　or →                    |


#### 折り畳み
<https://motamemo.com/vscode/vscode-tips/fold-unfold/>  


|　　操作                                |　　キー                                        |
|:--------------------------------------|:-----------------------------------------------|
| 折りたたみ                             |  Ctrl+Shift+[                                  |
| 展開                                   |  Ctrl+Shift+]                                  |
| すべて折りたたみ                        |  Ctrl+k Ctrl+0                                 |
| すべて展開                              |  Ctrl+k Ctrl+j                                |
| レベル1で折りたたみ                      |  Ctrl+k Ctrl+1                                |
| レベル2で折りたたみ                      |  Ctrl+k Ctrl+2                                |


 
　  
　  
　  　  
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

#### 画面の分割
上段メニュー View -> Editor Layout -> slip up  


#### ショートカットキーの設定呼び出し
Ctrl + K → Ctrl + S

