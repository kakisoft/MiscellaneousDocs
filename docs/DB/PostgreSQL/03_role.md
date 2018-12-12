ユーザみたいなもん？  
（複数のユーザを取りまとめる性質は無い？）  

## ロール一覧
```
select rolname from pg_roles;
```

## ロール作成
```
CREATE ROLE role_name WITH LOGIN PASSWORD 'password'


create role <rolename> with createdb password 'new_password';

create role kaki with createdb password 'kaki';


CREATE ROLE user01 LOGIN PASSWORD 'xxxxxxxxxx';
※LOGINが無いと、ログイン時に permission エラー。
```

## ロールに権限を付与
```
GRANT 権限 ON 対象 TO 誰に


GRANT SELECT, UPDATE, INSERT ON table_name TO role_name;


GRANT ALL ON kaki TO kaki;
```


## 権限の削除
```
REVOKE 権限 ON 対象 FROM 誰から
```

## ロールの削除
```
DROP ROLE name [, ...]
```
