yum install の内容を個別に書く  

```yaml
    - name: Install git
      yum:
        name: git
        state: present

    - name: Install aws-cli
      yum:
        name: aws-cli
        state: present
```

__________________________________________
yum install の内容をまとめて書く。  
state を分け書いても、１行にまとめて書いてもいい。

```yaml
    - name: Install yum package
      yum: name={{item}} state=latest
      with_items:
        - git
        - aws-cli
```

```yaml
    - name: Install yum package
      yum:
        name: "{{ item }}"
        state: present
      with_items:
        - git
        - aws-cli
```

__________________________________________
↑の書き方だと警告が出る。  
2.7 以降なら、こんな感じ。  


```yaml
    - yum:
        state: present
        name:
          - git
          - aws-cli
```


```yaml
    - yum:
        state: present
        name:
          - git
          - aws-cli
```



