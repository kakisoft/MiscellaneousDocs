チュートリアルが用意されている

## Chef Supermarket
<https://supermarket.chef.io/>


## 開発元
opscode


## 概要
```
WORKSTATION（実行する機器）
　 ↓
　 cookbook を送る
　 ↓
CHEF SERVER
　 ↓
Node Server（仮装マシンとか）

※2 番目を含めない構成も可
```

## Cookbook
設定ファイル（みたいなもの）

## Knife、Knife solo
コマンド

## リポジトリ
cookbook が入ったファイル群

## Resource
package

## _
```
knife solo init chef-repo

site-cookbooks
  →自分で変更を加えるなら、このフォルダに。


recipe

[default.rb]
log "Hello World"


knife solo cook harmony

```

## 雑記
```
yum や apt といった差は、Chefが吸収してくれる？
```

____________________________________________________________________


## Berkshelf
Chefのcookbookとその依存関係を管理するツール。  
bundlerみたいなもん？  



## knife
Chefレポジトリを操作するためのツール。


## knife-solo
それ単体でリポジトリやクックブックの作成、実行まで一括して行ってくれる。  
基本はchef soloを利用したい場合はこのknife soloに頼ればok。


## Chef-Zero
消えゆく（多分）Chef-Soloに代わる形で推奨されている単体で動く環境構築の自動化ツール。  
1つのマシンにサーバーとクライアントの両方を入れたようなイメージらしい。


## Chef Server
セットアップするサーバーの情報をChef Serverに登録、Chef Client側で通信先のChef Serverを登録しておいて"chef-client"を実行。


## Chef-Solo
サーバとクライアントの両方で動く Zero と異なり、独立して動くChef。  

____________________________________________________________________
## Chef Solo と Knife Soloでの ニコニコサーバー構築 (2) 〜導入編〜
<https://ch.nicovideo.jp/dwango-engineer/blomaga/ar322283>


____________________________________________________________________

## chef.add_role (Vagrant)
<https://www.vagrantup.com/docs/provisioning/chef_solo.html>

____________________________________________________________________


