## ウィジットのアンインストール
管理者権限にて実行
```
winget uninstall "windows web experience pack"
```

## 高速化１
設定 -> 個人用設定 -> 色 -> 透明効果 -> OFF


## 高速化２
sysdm.cpl  
システムのプロパティ -> 詳細設定タブ -> パフォーマンス「設定」 -> パフォーマンスを優先する  

 * スクリーン フォントの縁を滑らかにする
 * ドラッグ中にウィンドウの内容を表示する


# キーボード入力

IME右クリック -> 設定 -> 全般 -> 予測入力をOFF


コンパネ -> キーボード -> 速度


____________________________________________________________
# パフォーマンス改善
https://setup-lab.net/windows11-performance-options/

https://oshiete-pc.com/operating-system/windows11%E3%81%AE%E9%AB%98%E9%80%9F%E5%8C%96%EF%BC%81%E3%83%91%E3%82%BD%E3%82%B3%E3%83%B3%E3%81%AE%E5%8B%95%E4%BD%9C%E3%81%8C%E9%87%8D%E3%81%84%E9%81%85%E3%81%84%E5%8E%9F%E5%9B%A0%E3%81%A8%E5%AF%BE/


Winメニュー右クリック -> 設定 -> バージョン情報 -> システムの詳細設定 -> 詳細設定タブ -> 設定 -> パフォーマンスを優先する



____________________________________________________________
# タスクバーにアイコンを追加

ショートカット作成。その後、内容修正。  
先頭に C:\Windows\explorer.exe を追加

```
C:\Windows\explorer.exe C:\kaki\RepositoryShortcut
```

C:\Windows\explorer.exe "C:\Program Files\Microsoft VS Code\Code.exe" C:\kaki\kaki-en-talk