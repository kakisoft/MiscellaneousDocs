```
ls | ForEach-Object -Process { "$_"; Get-ChildItem -Path "$_" -Recurse -Force | ForEach-Object -Begin { $Len = 0 } -Process { $Len = $Len + $_.Length } -End { $Len / 1024 / 1024 / 1024 }; " " }
dir /S
dir /s /a-d  > hoge.txt


## リソースキット
（win 7）
https://www.microsoft.com/en-us/download/details.aspx?id=12616


diruse

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

Windows Vista や Windows 7 の標準フォントである「ＭＳ Ｐゴシック」「MS ゴシック」「MS UI Gothic」「ＭＳ Ｐ明朝」「MS 明朝」「メイリオ」そして「Meiryo UI」の7種類のフォントは、Windows XP の頃の JIS90 と違い、JIS2004。これが、Office 2010 をインストールすることによって、Office フォントの一部も JIS2004になってしまうのです。


□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□

64bitに対応した「ODP.NET」を使ってみよう！ 
http://codezine.jp/article/detail/5914?p=2


LMHOSTS
http://e-words.jp/w/LMHOSTS.html


LMHOSTSファイルの更新を即座に反映させる方法
http://www.atmarkit.co.jp/fwin2k/win2ktips/263qalmhosts/qalmhosts.html


Windows OSでの名前解決順序の変更
http://orebibou.com/2014/06/windows-os%E3%81%A7%E3%81%AE%E5%90%8D%E5%89%8D%E8%A7%A3%E6%B1%BA%E9%A0%86%E5%BA%8F%E3%81%AE%E5%A4%89%E6%9B%B4/


Windows 名前解決の順序
http://blogs.technet.com/b/jpntsblog/archive/2009/07/13/windows.aspx

□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□


UNC 【 Universal Naming Convention 】

UNCとは、Microsoft社のWindows向けネットワーク環境「Microsoftネットワーク」上で、
ネットワークの向こうにあるマシン上の資源（ファイル、プリンタなど）を指し示すための表記法。
たとえば、ネットワークの向こうにある「ISCANDAL」というマシンの「C:\YAMATO\ENGINE.LOG」というファイルを指し示す場合、
「\\ISCANDAL\C$\YAMATO\ENGINE.LOG」と表記する。




XCOPY
【えっくすこぴー】

DOS窓で利用するコピーツール。更新日付を指定しての差分コピーやアクセスできないファイルやフォルダがあってもコピーを実行するオプションがあったりしてとても便利だ。



■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


＜フォント環境＞
Windows XP：JIS90
Vista 以降：JIS2004
              ・ＭＳ Ｐゴシック
              ・MS ゴシック 
              ・MS UI Gothic 
              ・ＭＳ Ｐ明朝 
              ・MS 明朝 
              ・メイリオ
              ・Meiryo UI


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


ワークグループからドメインの共有フォルダにアクセスする
http://www.corso-b.net/itaya/TIPS/TIPS13.html


一般的には、ドメインの共有フォルダなど、ドメインの共有資源にアクセスするためにはクライアントがドメインに参加する必要があります。
つまりワークグループ環境のクライアントからは、同じネットワーク上にあってもドメインの共有資源にアクセスすることはできません。
ただし、この場合でも、クライアントのユーザー名とパスワードがドメインにユーザー登録されていれば、UNC名を指定することで共有フォルダにアクセスすることができます。
また、Windowsのブラウジングでは、基本的にドメインとワークグループを区別しませんので、
ワークグループ名をドメイン名と同じにすれば、ワークグループPCのネットワークコンピュータからドメインの共有資源をブラウズできるようになります。
この方法は、UNCで指定する必要がないので、簡単にドメイン名あるいはワークグループ名を変更できるならば便利に使うことができます。


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


□□□□□□□□□□□□□□□□□□□□□□□

doskey マクロ名=テキスト
doskey ls=dir


＜ひとまずOK＞
%windir%\system32\cmd.exe %windir%\system32\cmd.exe /k doskey ls=dir

━━━━━━━━━━━━━━━━━━━━━━━━━


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


＜WPFを学ぶには＞
http://blog.hiros-dot.net/?p=525

schoo
https://schoo.jp/class/3976

コードアカデミー
https://mva.microsoft.com/


コード レシピ:サンプルコードから学ぶ 
https://code.msdn.microsoft.com/site/search?f%5B0%5D.Type=Topic&f%5B0%5D.Value=WPF%20%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3


■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■


```