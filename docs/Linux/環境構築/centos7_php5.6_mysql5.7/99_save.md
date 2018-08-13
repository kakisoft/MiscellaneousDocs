## スナップショット
```
vagrant snapshot save savepoint01
```

## box化
```
vagrant package --output VM02.box
```

_____________________________________________
!!! danger
    どっちかが原因で、vagrant up 時に共有フォルダ設定が死んだ。
    vagrant up 時に、エラーが発生。
    多分、box化の方・・・なんじゃないかと思う。
    Win10、CentOsS7



