チュートリアルが用意されている


## 開発元
opscode


## 概要
WORKSTATION（実行する機器）
　 ↓
　 cookbook を送る
　 ↓
CHEF SERVER
　 ↓
Node Server（仮装マシンとか）

※2 番目を含めない構成も可

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


