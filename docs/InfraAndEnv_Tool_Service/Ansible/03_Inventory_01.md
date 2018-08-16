```
ansible (ホスト名)
ansible web
ansible db 
ansible all

i オプションで Inventory ファイルの場所を指定します。

そのあとに実行するコマンドを書いていくのですが、コマンド自体はモジュールというもので管理されていたりするので、「-m」として何かのモジュールを指定してください。

毎回 Inventory ファイルの場所を指定してもいいのですが、ansible.config というファイルに場所を書いておくと省略することができるので、それをやってしまいましょう。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

vi hosts
----- 編集開始
[web]
192.168.43.52

[db]
192.168.43.53
----- 編集終了
ansible all -i hosts -m ping


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


vi ansible.cfg
----- 編集開始
[defaults]
hostfile = ./hosts
----- 編集終了
ansible all -m ping


```