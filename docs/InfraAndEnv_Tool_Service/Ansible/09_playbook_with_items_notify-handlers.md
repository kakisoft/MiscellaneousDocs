```
ansible-playbook playbook05.yml


http://192.168.43.52/hello.php


【 playbook05.yml 】
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
    - name: install php packages
      yum: name={{item}} state=latest
      with_items:
        - php 
        - php-devel
        - php-mbstring
        - php-mysql
      notify:
        - restart apache
    - name: copy hello.php
      copy: src=./hello.php dest=/var/www/html/hello.php owner=vagrant
  handlers: 
    - name: restart apache
      service: name=httpd state=restarted


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【 hello.php 】
============================================
<?php

echo "hello from PHP!";

============================================


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

さて、続きをやっていきましょう。
0:06
Apahce 関係がほぼ終わったので、PHP の方に行きたいと思います。
0:12
では Playbook の編集をしていけば OK ですね。
0:14
一番下まで行って、yum を使って PHP をインストールしてきましょう。
0:21
「- name: install php packages」とします。
0:28
yum で PHP をインストールするには「yum: name=php state=latest」とすると最新版が入ってくれます。
0:37
ただし、PHP に関しては他のパッケージも合わせて入れたいかと思います。
0:41
php-mbstring とか php-mysql とかそういうものですね。
0:46
「- name: …」「yum: …」の 2 行をたくさん書いてもいいのですが、実は一気に設定していく方法もあるので、そのやり方を今回は見ていきましょう。
0:56
変数を使っていくのですが、「yum: name={{item}} state=latest」と書いて、その下に「with_items:」というのを作って、その下に item に来てほしい名前をリストとして作っていけば OK です。
1:15
今回は「- php」「- php-devel」「- php-mbstring」「- php-mysql」を入れていくことにしましょう。
1:30
これらが 1 つずつ item に入って、「yum: name={{item}} state=latest」が実行されるという形なので、覚えておくといいでしょう。
1:36
それから PHP に関してなのですが、これらをインストールしたあとに Apache を再起動したいと思います。
1:42
そのための方法も実は Ansible にあるので、そのやり方も見ていきます。
1:46
notify というのを使うのですが、「notify:」としたあとに「- restart apahce」とします。
1:55
そのあとに、handlers というセクションを作ります。
2:00
その中で同じ名前を付けて（「- restart apahce」）、実際に実行するモジュールをその次に書いていきます。
2:13
今回は Apache の再起動をしたいので、「service: name=httpd state=restarted」とすれば OK です。
2:22
この notify と handlers の関係なのですが、タスクで何らかの変更がサーバに対して行われた場合に handlers が呼ばれるという形になっています。
2:33
1 点注意していただきたいのは、handlers は最後に 1 回だけ呼ばれると思っておいてください。
2:39
なので、タスクがたくさんあって、複数の箇所から restart apache が呼ばれたとしても、handlers が実行されるのは最後の 1 回と言うことを意識しておきましょう。
2:50
いろいろ確認していきたいのですが、長くなりそうなので続きは次回にしていきます。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━


さて、続きをやっていきましょう。
0:04
notify と handlers の仕組みを作ったので動作確認をしていきたいところなのですが、せっかくなので PHP ファイルを作って、それを Web 側に転送して、それがきちんと表示されるかどうかで Apache が再起動されたかどうかを確認していきましょう。
0:19
ということで、今回は hello.php を作って、転送していきます。
0:24
転送するのは copy モジュールですね。
0:26
「copy src=./hello.php dest=/var/www/html/hello.php」で OK かと思います。
0:35
「owner=vagrant」にしておきましょう。
0:39
これで OK っぽいので、保存をして、あとは hello.php を作れば OK ですね。
0:45
適当な PHP ファイルであればいいので、「<?php echo "hello form PHP!";」でいいのではないでしょうか。
0:52
これも保存しておきましょう。
0:54
ここまで出来たら ansible-playbook を実行すればいいので、「ansible-playbook playbook.yml」を実行すると…エラーが出ていますね。
1:05
名前がないですね。
1:08
Playbook を編集していきます。
1:10
「handlers:」の下の「- restart apache」を「- name: restart apahce」とするのを忘れていましたね。
1:17
保存をして、もう 1 度実行しましょう。
1:20
ちょっと時間がかかるかと思うので、終わったところから再開していきます。
1:27
さて、終わったようですね。
1:28
ちゃんと PHP のいろいろなパッケージがインストールされて、hello.php も転送されて、Apache のリスタートもされているようです。
1:34
なので、ブラウザから確かめてみましょう。
1:38
192.168.43.52/hello.php にアクセスすると、ちゃんと転送したファイルの中身が PHP として表示されているのが分かるかと思います。
1:48
こういったやり方も覚えておいてください。
1:50
それから notify と handlers の関係なのですが、notify を呼んでいるのは install php packages なのですが、このタスクに変更がなければ restart apache が呼ばれないということにも注意しておいてください。
2:01
なので、同じ Playbook をもう 1 度実行すると、今度は PHP のパッケージがインストールされているので、install php packages では何の変更もサーバに加えられないかと思います。
2:11
そうすると notify が呼ばれないので、restart apache も呼ばれないという形になります。
2:15
確認してみましょう。
2:18
時間がかかるので、終わったところから再開していきます。
2:23
…さて、終わったようです。
2:25
install php packages が PHP のいろいろなパッケージをインストールするタスクなのですが、今回はサーバに変更を加えなかったので「ok」になっていて、notify のところで restart apache が呼ばれていないのが分かるかと思います。
2:38
こういった特徴もあるということに気を付けておいてください。


```