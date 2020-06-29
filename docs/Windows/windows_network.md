## プロセス確認
netstat で、ポート番号まで確認可能。  
PID まで確認するには「-o」オプションを付ける。
```
netstat -o
```

## kill
スラッシュ。Fは強制モード。
```
taskkill /pid 1516
taskkill /F /pid 1516
```

