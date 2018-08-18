### 結論
パッケージのバージョンを固定したければ、latestを使わずに、presentかinstalledを使う。
　  
　  
nameで[pkgname]-[version]を指定したとしても、stateがlatestであれば、指定したバージョンより新しいものが(あれば)インストールされる。


|   state    |               意味               | 対応するyumコマンド  |
|:----------:|:---------------------------------|:-------------------|
| present    | パッケージのインストール           |  yum install       |
| installed  | presentのalias                   | yum install        |
| latest     | パッケージの最新版へのアップデート  | yum update         |
| absent     | パッケージのアンインストール        | yum remove         |
| removed    | absentのalias                    |  yum remove        |

_________________________________
## 参考サイト
<https://qiita.com/tkit/items/7ad3e93070e97033f604>
_
