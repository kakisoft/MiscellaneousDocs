```
## SQL Serverログインメモ

SQL Serverにおいて、２種類の認証方法があります。
 * Windows認証　　　　　　Windowsでの認証を、そのまま適用する
 * SQL Server認証　　　 SQL Server独自の認証を行う　　　　

インストール時には、Windows認証のみが有効となっています。

## SQL Server認証を有効化
Microsoft SQL Server Management Studioを起動し、Windows認証でログイン。

ルートを右クリック→プロパティ
「セキュリティ」の項目にて、サーバー認証を「SQL Server認証モードとWindows認証モード」を選択。
OKボタンを押す
セキュリティ→ログイン→
saにて右クリック
　状態タブにて、「許可」「有効」を選択。
　全般タブにて、パスワードを再設定

SQL Serverを再起動。
（Sql Server Configuration Managerより、サービス→再起動）

```