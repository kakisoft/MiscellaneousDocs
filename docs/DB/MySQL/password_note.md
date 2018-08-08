## パスワードポリシー（MEDIUM : 1）
 * 最低１つの数値文字を含む
 * 最低１つの小文字および大文字を含む
 * １つの特殊文字 (英数字以外) を含む

参考：<https://dev.mysql.com/doc/refman/5.6/en/validate-password-options-variables.html#sysvar_validate_password_policy>

## パスワードポリシーの変更
```
set global validate_password_length=6;

set global validate_password_policy=LOW;
```

## パスワードポリシー情報を表示
```
SHOW VARIABLES LIKE 'validate_password%';
```

## パスワード変更
```
set password = password('some password');

set password for user = password('some password');

set password for ユーザ名@"ホスト名"=password('変更後のパスワード');

set password for root@localhost=password('root');
```
