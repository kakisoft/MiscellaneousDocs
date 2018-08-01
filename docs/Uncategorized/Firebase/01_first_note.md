## プロジェクトの追加
https://console.firebase.google.com/
```
プロジェクトを追加
　→プロジェクト名を入力
　　　→「日本」を選択
　　　　　→チェックを入れて、「プロジェクトを作成」



公開するサイトは「Public」
```

## firebase tools
```
（インストール）
sudo npm install -g firebase-tools

（バージョン確認）
firebase -V

（ログイン）
firebase login
ブラウザが立ち上がる。認証が終わったら、そのタブは閉じてOK。

（アップロードするプロジェクトの設定）
ターゲットとするフォルダにて
firabase init
（public フォルダが存在しているフォルダ）

→サービスを選択。
（Hosting 等）　Database, Firestore, Function, Hosting Strage
　→firabaseにて作成したプロジェクトを選択
　　→公開サイトが publicフォルダなら、そのまま Enter
　　　→SPAにしますか（そのつもりがないなら Noを選択）
　　　　→index.htmlを上書きしますか？（無かったら勝手に作ってくれる？　既に作成済みなら、No）

「firebase.json」というファイルが作成される。

（デプロイ）
firebase deploy


Project Console: 
https://console.firebase.google.com/project/myportfolioproject-17715/overview
Hosting URL: 
https://myportfolioproject-17715.firebaseapp.com


（更新）
firebase deploy
```
## ブラウザ上にて状況を確認
```
プロジェクトを選択→[開発]タブ→Hosting
（ダッシュボードを表示できる）

「デプロイの履歴」から、過去の状態に戻す事もできる。
```




