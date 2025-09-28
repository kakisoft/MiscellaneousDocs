例： kakinohana

# コマンド
```
# ユーザ作成
sudo adduser kakinohana

# グループ追加
sudo gpasswd -a kakinohana wooms
sudo gpasswd -a kakinohana users

# SSH ディレクトリ作成
sudo mkdir -p /home/kakinohana/.ssh
sudo chmod 700 /home/kakinohana/.ssh
sudo chown -R kakinohana:kakinohana /home/kakinohana/.ssh

# 公開鍵コピー（ローカルから）
scp ./id_ed25519_kakinohana_prod.pub kaki-sample02:/tmp/kakinohana.pub　※垣花実験用環境
scp ./id_ed25519_kakinohana_prod.pub odk_wiki_prod:/tmp/kakinohana.pub

# サーバで authorized_keys に登録
sudo mv /tmp/kakinohana.pub /home/kakinohana/.ssh/authorized_keys
sudo chmod 600 /home/kakinohana/.ssh/authorized_keys
sudo chown kakinohana:kakinohana /home/kakinohana/.ssh/authorized_keys
```


