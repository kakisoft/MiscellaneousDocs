## macOSアップデート後の『xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools)...』の対処法
<https://qiita.com/nishina555/items/e23d73067a5cac182a63>
```
xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun
```
以下を実行（xcodeをインストール）
```
xcode-select --install
```



