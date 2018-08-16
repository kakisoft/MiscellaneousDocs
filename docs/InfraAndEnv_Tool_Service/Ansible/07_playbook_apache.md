```
ansible-playbook playbook03.yml



【 playbook03.yml 】
============================================
---
- hosts: all
  sudo: yes
  tasks:
    - name: add a new user
      user: name=taguchi state=absent

- hosts: web
  sudo: yes
  tasks:
    - name: install apache
      yum: name=httpd state=latest
    - name: start apache and enabled
      service: name=httpd state=started enabled=yes
============================================


さて、続きをやっていきましょう。
0:04
今ユーザの追加ができたので、今度は Web の方に Apache をインストールして、さらにそれを起動させて、さらに再起動時も有効になるように設定していきます。
0:15
Playbook でやっていきたいので、それを編集していきましょう。
0:20
「var_prompt: …」はもう要らないので消して、「user: name=taguchi」としておきましょう。
0:29
all に対してではなくて、web に対してだけやりたいので、新しいセクションを作っていけば OK ですね。
0:34
「- hosts: web」としましょう。
0:36
管理者権限が必要なので、「sudo: yes」とします。
0:40
「tasks:」で、「- name: install apache」とします。
0:48
モジュールは何を使うかというと、yum を使えば OK ですね。
0:52
「yum: name=httpd state=latest」とすると最新版をインストールしてくれるので、それも覚えておきましょう。
1:07
それからさらにそれを起動しないといけないので、「- name: start apache and enabled」としましょう。
1:16
今回は service モジュールを使っていきます。
1:19
「service: name=httpd state=started enabled=yes」とすると、再起動の時も有効になってくれるはずです。
1:30
このあたりのオプションは、公式ドキュメントのモジュール一覧の yum とか service を見てみるといいかと思います。
1:37
これで保存して、実行していきましょう。
1:40
ちょっと時間がかかるので、終わったところから再開していきます。
1:46
…さて、終わったようですね。
1:47
「install apache」と「start apache and enabled」が実行されて、192.168.43.52 の方が「changed=2」になっています。
1:56
ここまで出来たら、Web サーバが立ち上がっているはずなので、192.168.43.52 でアクセスすると何かが見えるのではないでしょうか。
2:05
ブラウザでアクセスすると、ちゃんと Apache のテストページができているので、Web に対してうまく設定ができています。
2:11
といったところで、簡単でしたが Apache のインストールの仕方を見てきました。

```