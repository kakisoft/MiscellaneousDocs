## スナップショットの一覧
```
vagrant snapshot list
```

## スナップショット作成
「savepoint1」という名称で作成。
```
vagrant snapshot save savepoint01
```

## スナップショット復元
```
vagrant snapshot restore savepoint01
```

## スナップショット削除
```
vagrant snapshot delete savepoint01
```

_______________________________________________________
### 参考サイト
<https://weblabo.oscasierra.net/vagrant-snapshot/>
