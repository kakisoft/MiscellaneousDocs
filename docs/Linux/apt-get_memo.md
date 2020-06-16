<https://qiita.com/white_aspara25/items/723ae4ebf0bfefe2115c>  

|  コマンド                       |  内容                                                |
|:----------------------------|:---------------------------------------------------|
|  apt-get install [package]  |  パッケージのインストール/更新                                   |
|  apt-get update             |  パッケージリストの更新                                       |
|  apt-get upgrade            |  インストールされてるパッケージの更新                                |
|  apt-get dist-upgrade       |  インストールされてるカーネルの更新(Ubuntu)/ディストリビューションの更新(Debian)  |
|  dpkg -l [package]          |  インストールされてるパッケージの一覧                                |
|  dpkg -L                    |  インストールした時のファイルの一覧                                 |
|  apt-cache search [query]   |  パッケージの検索                                          |
|  apt-cache policy [query]   |  パッケージの検索 (インストール可能なバージョンの表示）                      |
|  apt-cache madison [query]  |  パッケージの検索 (インストール可能なバージョンの一覧）                      |
|  apt-get remove [package]   |  パッケージの削除                                          |
|  apt-get autoremove         |  使ってないパッケージの削除                                     |
|  apt-get purge [package]    |  パッケージの削除（設定ファイルも）                                 |
|  apt-get clean              |  アーカイブファイルの削除                                      |
|  apt-get autoclean          |  使ってないパッケージのアーカイブファイルの削除                           |


## apt-get update
パッケージを管理しているDBを更新して、最新の状態にする。パッケージの更新自体はしません。  
参照する場所は /etc/apt/sources.list に記述。  


## apt-get upgrade
インストールされているパッケージを全更新。  
追加でパッケージのインストールが必要になった場合は更新処理を止めてくれる。  


## apt-get clean
パッケージをインストールするために拾ってきたアーカイブファイル（ *.tar.gz とか）を削除


## apt-get dist-upgrade
apt-get upgrade と似てるが、違いとしては、追加で新規のパッケージが必要になればインストールしたり不要になったパッケージは削除してくれる。とにかく最新にしてくれるコマンド。  
ディストリビューションのバージョン更新もするので、ディストリビューターからのセキュリティパッチを充てる時とかによく使う。  


## apt-get remove [package]
指定したパッケージの削除。




