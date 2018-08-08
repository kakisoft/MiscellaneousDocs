## 停止
```
sudo systemctl stop firewalld.service
```

## 起動
```
sudo systemctl start firewalld.service
```

## 動作確認
```
sudo firewall-cmd --state
```

## 自動起動設定
```
sudo systemctl enable firewalld.service
```

## 自動起動の設定確認
```
systemctl is-enabled firewalld.service 
```

## 自動起動設定の解除
```
systemctl disable firewalld.service
```

