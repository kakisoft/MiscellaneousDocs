```
ansible-playbook playbook04.yml



【 playbook04.yml 】
============================================
---
- hosts: all
  sudo: yes
  tasks:
    - name: add a new user
      user: name=taguchi
    - name: install libselinux-python
      yum: name=libselinux-python state=latest

- hosts: web
  sudo: yes
  tasks:
    - name: install apache
      yum: name=httpd state=latest
    - name: start apache and enabled
      service: name=httpd state=started enabled=yes
    - name: change owner
      file: dest=/var/www/html owner=vagrant recurse=yes
    - name: copy index.html
      copy: src=./index.html dest=/var/www/html/index.html owner=vagrant


============================================

【 index.html  】
============================================
<html>
hello from ansible!
</html>

============================================

さて、続きをやっていきましょう。
0:04
Apahce のインストールと起動ができたので、次は Apache の Document Root の所有者を変えつつ、そこにファイルを置いてブラウザから確認するというのをやってみましょう。
0:15
最初に何をやりたいかというと…、置くファイルを先に作っておきましょう。
0:19
index.html を書いていきます。
0:23
今回は「<html> hello from ansible! </html>」としましょう。
0:30
これを保存して、あとは Playbook の方を編集していけば OK ですね。
0:35
まずはドキュメントルートの所有者を変えたいので、それをやっていきます。
0:40
「- name: change owner」として…、ファイルやディレクトリに関するものは file モジュールを使っていきます。
0:48
「file: dest=/var/www/html owner=vagrant」としましょう。
0:57
「recurse=yes」とすると、再帰的にそれ以下のフォルダも所有者を設定してくれます。
1:07
そのあとに、今作った index.html を転送すればいいので、「- name: copy index.html」として、モジュールは copy モジュールを使っていきます。
1:19
「copy: src=./index.html dest=/var/www/html/index.html」としましょう。
1:32
owner は vagrant にしてほしいので、それの設定もしておきます。
1:37
ここまで出来たら保存すればいいのかな。
1:41
「ansible-playbook playbook.yml」で Playbook を実行してきましょう。
1:45
ちょっと時間がかかるので、終わったところから再開してきます。
1:52
さて、終わったようですが、libselinux-pyhon が足りないといわれたので、こちらをインストールしていきましょう。
1:58
ちょっとコピーして、Plybook を編集していきます。
2:04
どちらでインストールするかなのですが…、（libselinux-pyhon は）ファイル転送に必要ですが、web の方でも db の方でも将来的に必要になるのではないかと思うので、all で行っておきましょう。
2:14
「- name: install libselinux-pyhon」として、yum を使えば OK ですね。
2:20
「yum: name=libselinux-python state=latest」とすれば OK でしょう。
2:27
ここまでで保存をして、もう 1 度 Playbook を実行していきます。
2:31
これも終わったところから再開していきましょう。
2:38
…さて、終わったようですね。
2:39
copy index.html もうまくいっているようです。
2:42
なので、ブラウザから確認すると、ちゃんと「hello from ansible!」と出てきています。
2:48
といったところで、続きは次回にしてきます。



```