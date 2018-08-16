```
ansible-playbook playbook07.yml


http://192.168.43.52/hello.php


【 playbook07.yml 】
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


さて、続きをしていきましょう。
0:05
次は MySQL でデータベースを作ってユーザを設定するというのを Playbook を使ってやってみましょう。
0:15
「- name: cerate a databese」としましょう。
0:23
モジュールとしては mysql_db を使います。
0:26
この辺りが気になる人は、公式ドキュメントを見てください。
0:29
「mysql_db: name=mydb state=present」とすると、存在が保証されるはずです。
0:36
そのあとはユーザを作りましょう。
0:41
モジュールは mysql_user を使います。
0:45
「mysql_user: name=dbuser」として…、パスワードはいろいろな設定の仕方がありますが、今回は練習なので「password=dbpassword」とそのまま書いてしまいましょう。
0:57
「priv=mydb.*:ALL」として、mydb のすべてのテーブルに対して何でもできるとしましょう。
1:05
「state=present」でいいと思います。
1:12
これで保存して、実行します。
1:16
「ansible-playbook playbook.yml」で Playbook を実行すれば OK ですね。
1:21
ちょっと時間がかかるので、終わったところから再開していきます。
1:26
…さて、終わったようですが何かエラーが出ているようです。
1:29
データベースを作るときに python mysqldb が必要になるので、それを追加していきましょう。
1:36
どこで追加するかというと…、MySQL と一緒にインストールしたいのですが、せっかくなので復習もかねて変数を使ってリストで登録していくというのをやっていきましょう。
1:56
「yum: name={{item}} state=latest」として with_items を使えば OK ですね。
1:58
「with_items:」「- mysql-server」「- MySQL-python」として保存して、実行していきましょう。
2:16
これも時間がかかるので、終わったところから再開していきます。
2:21
さて、今度はうまくいったようですね。
2:23
ちょっと確かめてみましょう。
2:26
「ssh db」で DB にログインして、「mysql -u dbuser -p mydb」とします。
2:31
パスワードを入力すると、ちゃんとアクセスができて、「show databases;」でデータベースの一覧を見てみると、mydb というデータベースがきちんとできているのが分かるかと思います。
2:43
このようにいろいろなことができるので、慣れておくようにしてください。


```