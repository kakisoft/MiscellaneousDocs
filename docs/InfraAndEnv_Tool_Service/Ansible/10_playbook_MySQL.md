```
ansible-playbook playbook06.yml


http://192.168.43.52/hello.php


【 playbook06.yml 】
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



```