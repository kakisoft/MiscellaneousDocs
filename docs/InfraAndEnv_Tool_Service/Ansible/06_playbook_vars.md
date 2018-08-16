```
ansible-playbook playbook02-1.yml
ansible-playbook playbook02-2.yml



【 playbook02-1.yml 】
============================================
---
- hosts: all
  sudo: yes
  vars:
    username: kaki
  tasks:
    - name: add a new user
      user: name={{username}}
============================================


【 playbook02-2.yml 】
============================================
---
- hosts: all
  sudo: yes
#  vars:
#    username: taguchi
  vars_prompt:
    username: "Enter username"
  tasks:
    - name: add a new user
      user: name={{username}}
============================================

```
ERROR! Unexpected Exception, this is probably a bug: The value 'None' is not a valid boolean.  Valid booleans include: 0, 'on', 'f', 'false', 1, 'no', 'n', '1', '0', 't', 'y', 'off', 'yes', 'true'
```

さて、続きをやっていきましょう。
0:04
次は Playbook で使える変数について見ていきます。
0:08
複数の値を 1 箇所で管理したり、Playbook を使い回すときにそこだけ変えて再利用する、といったときに使われるので、見ていきます。
0:17
例としては単純なのですが、今回はユーザ名を変数で管理するというのを見ていきます。
0:23
とはいっても簡単で、「tasks:」の前に「vars:」というのを付けて、キーと値で管理すれば OK です。
0:29
「username: taguchi」としましょう。
0:34
「state=absent」は不要なので消します。
0:37
変数の値を使うときは、「{{}}」の中にキーを書けば OK です。
0:43
「user: name={{username}}」で OK かな。
0:44
これで保存して実行すると、問題なく実行されて…、今 taguchi ユーザが追加されています。
0:53
こういったこともできますし、実行時に変数の値をユーザに入力させることも可能です。
1:02
そのやり方も見ていきましょう。
1:04
パスワードなどはそういったときに便利かと思います。
1:08
ではやっていくのですが、「vars_prompt:」としたあとに「username: "Enter username"」としてください。
1:21
これで実行時にユーザ名を聞いてきてくれるはずです。
1:26
実行すると「Enter username:」と出てくるので、好きな名前を書けば OK でしょう。
1:33
「taguchi」と入力すると、すでに存在するので「changed=0」になっていますね。
1:40
このように使えるので、変数も使えるようにしておきましょう。

```