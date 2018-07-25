【Ubuntu 16.04.03 LTS】

pyenvインストール
```
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
source ~/.profile
pyenv install 3.6.1
```
バージョン変更
```
pyenv global 3.6.1
```
バージョン確認
```
python -V
```





**エラー発生時の対応**
```
Installing Python-3.6.0...
WARNING: The Python bz2 extension was not compiled. Missing the bzip2 lib?
WARNING: The Python readline extension was not compiled. Missing the GNU readline lib?
WARNING: The Python sqlite3 extension was not compiled. Missing the SQLite3 lib?
Installed Python-3.6.0 to /home/uskaki101/.pyenv/versions/3.6.0
```
原因：OpenSSL のライブラリが入ってない。  
対処：以下を実行
```
sudo apt-get install libssl-dev
```