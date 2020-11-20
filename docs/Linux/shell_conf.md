<https://qiita.com/tkooler_lufar/items/66e8fa451185e812a33a>

|  bashで使ってたファイル    |  zshで使うファイル   |  備考                                           |
|:------------------|:--------------|:----------------------------------------------|
|  ~/.bash_profile  |  ~/.zprofile  |  source .bashrc してた場合、それより前の記述をコピペする          |
|  ~/.bashrc        |  ~/.zshrc     |  bash のログインシェルは読まなかったが、 zsh はログインシェルでも読む点に注意  |
|  ~/.bash_profile  |  ~/.zlogin    |  source .bashrc してた場合にのみ作る。それより後の記述をコピペする     |
|  ~/.bash_logout   |  ~/.zlogout   |  -                                             |


