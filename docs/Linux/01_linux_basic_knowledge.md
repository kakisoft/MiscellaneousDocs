# OOM killer / OOMキラー / Out of Memory Killer
https://baresupport.jp/blog/2023/12/15/391/

システムのメモリが物理的に不足した際に、Linuxカーネルが特定のプロセスを強制終了する機能。
システムのメモリが枯渇したことで発生する。
Linuxカーネルに実装されたメモリ管理機能の一つ。

## OOM 確認方法
grep -i kill /var/log/messages*

-> grep: /var/log/messages*: No such file or directory
ファイルができない事もある？　この方法ではできなかった。

