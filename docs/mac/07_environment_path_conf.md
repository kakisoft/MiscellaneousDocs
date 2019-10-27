## PATHの確認
```
echo $PATH

または

printenv PATH
```


## PATHを通す
```
vi ~/.bash_profile

export PATH=$PATH:通したいPATH

（例）
export PATH="$PATH:`pwd`/flutter/bin"
```


## .bash_profileの更新
```
source ~/.bash_profile
```

