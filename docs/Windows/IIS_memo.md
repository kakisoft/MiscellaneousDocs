```
## IIS起動
inetmgr

## indexドキュメント変更
既定のドキュメント→基本設定→パス指定
（デフォルトは %SystemDrive%\inetpub\wwwroot）
※「基本設定」は、右端のウィンドウにあったりする。

## IIS有効化
コンパネ→プログラムと機能→Windowsの機能の有効化または無効化→IIS

## IISに.NET Frameworkをインストール
（32bit）cd C:\Windows\Microsoft.NET\Framework\v2.0.50727
（64bit）cd C:\Windows\Microsoft.NET\Framework64\v2.0.50727
aspnet_regiis -i


＜設定メモ＞
inetpub\wwwroot
直下でなく、仮想ディレクトリを作成した方が良さそう。


アプリケーションプールを分ける
Default Web Site：詳細設定（右端のメニュー）→仮想パス設定可能


## FTP 534 policy requires ssl
デフォルトではSSL接続しか受け付けない。
SSL接続をサポートしていないFTPクライアントの場合、非SSL接続も許可する。
　下段の「機能ビュー」タブ → FTPのSSL → SSL接続を許可する
```

## MIMEの種類→追加
.apk
application/vnd.android.package-archive
