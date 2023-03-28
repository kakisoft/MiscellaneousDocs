## バージョン確認
```
lsb_release -a

（例）
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.2 LTS
Release:        22.04
Codename:       jammy
```

```
cat /etc/os-release


PRETTY_NAME="Ubuntu 22.04.2 LTS"
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.2 LTS (Jammy Jellyfish)"
VERSION_CODENAME=jammy
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=jammy
```


## アップグレード（ 20 -> 22 ）
https://zenn.dev/ryuu/articles/upgrade-ubuntu2204-wsl

```
sudo apt update && sudo apt upgrade
sudo apt dist-upgrade && sudo apt install update-manager-core

# sudoでファイルを開く
sudo vim /etc/update-manager/release-upgrades
ファイルの一番下にPromptという項目があります。ここの値をltsに変更します。すでにLTSリリースを使用している場合はデフォルトでPrompt=ltsとなっているため変更する必要はありません。


sudo do-release-upgrade -d
```



## 再起動エラー（ reboot ）
https://kagasu.hatenablog.com/entry/2020/01/02/155532

```
$ sudo reboot
Failed to connect to bus: No such file or directory
Failed to talk to init daemon.
```

以下を実行
``
wsl.exe --shutdown
```



____________________________________________________________________________________

Configuration file '/etc/sudoers'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** sudoers (Y/I/N/O/D/Z) [default=N] ?


