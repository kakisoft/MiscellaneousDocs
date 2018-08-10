## ハード情報
コマンド
```
cat /proc/cpuinfo
```
詳細
<https://piro791.blog.so-net.ne.jp/2008-09-30-3>
```
# cat /proc/cpuinfo
processor       : 0
vendor_id       : GenuineIntel
cpu family      : 6
model           : 15
model name      : Intel(R) Core(TM)2 CPU          6400  @ 2.13GHz
stepping        : 6
cpu MHz         : 2133.675
cache size      : 2048 KB
physical id     : 0
siblings        : 2
core id         : 0
cpu cores       : 2
fdiv_bug        : no
hlt_bug         : no
f00f_bug        : no
coma_bug        : no
fpu             : yes
fpu_exception   : yes
cpuid level     : 10
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe nx lm constant_tsc pni monitor ds_cpl vmx est tm2 cx16 xtpr lahf_lm
bogomips        : 4273.36

processor       : 1
vendor_id       : GenuineIntel
cpu family      : 6
model           : 15
model name      : Intel(R) Core(TM)2 CPU          6400  @ 2.13GHz
stepping        : 6
cpu MHz         : 2133.675
cache size      : 2048 KB
physical id     : 0
siblings        : 2
core id         : 1
cpu cores       : 2
fdiv_bug        : no
hlt_bug         : no
f00f_bug        : no
coma_bug        : no
fpu             : yes
fpu_exception   : yes
cpuid level     : 10
wp              : yes
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe nx lm constant_tsc pni monitor ds_cpl vmx est tm2 cx16 xtpr lahf_lm
bogomips        : 4267.00




processor　　そのマシンに刺さっているプロセッサ（コア）の通し番号。最初が０番。
vendor_id　　そのプロセッサを作ったベンダー名
cpu family　　よくわかりませんが、ファミリー番号と言われてもねえ。サイトによっては、「ix86」（「x」は数値）の「x」の部分の数値が入る…とか書いてありますが、マシンによっては「15」とか出てくるんですが…（汗）
model　　モデル番号だそうです。IntelだったりAMDだったりで番号の振り方が違うらしいです。
model name　　プロセッサの名前っすね。ここを見るのが一番分かり易いですね。
stepping　　同じコアでも世代が微妙に違ったりするとここの数値が変化するとかしないとか。ちなみに、vender_idとcpu familyとmodelとsteppingとでmodel nameを特定するんだそうで。
cpu MHz　　プロセッサの動作周波数。実測値を表示するので微妙にキリのよくない数値になっています。
cache size　　読んで字のごとく、キャッシュサイズですな。L2キャッシュのサイズがここに出る模様ですが、L2キャッシュの無い古いプロセッサとかはL1キャッシュ（というか単なる内蔵キャッシュ）が出る模様です。
physical id　　物理プロセッサID。この数値が同じプロセッサは、同じソケットに刺さっている。シングルコア・シングルプロセッサだったりするとそもそも項目自体が表示されない。
siblings　　そのコアが乗っかっている物理プロセッサに、いくつのコアが同居しているか？という数値。Core2じゃなくてHTなP4の場合でも、ここには「2」と出る。てことは、Core2 Quadだと「4」ということになるんですかね。
core id　　物理プロセッサ毎のコアの通し番号
cpu cores　　siblingsと何が違うんだろう…？
fdiv_bug　　初期のPentiumプロセッサで存在した浮動小数点演算のバグを持つかどうか。このバグのせいで一時期PentiumプロセッサなPCが市場から消えてi486DX4-100MHzなPCが席捲したんだよね…。
hlt_bug　　詳細は不明。どうやらPentium4プロセッサの一部でこれが「yes」になる模様。
f00f_bug　　古いPentiumプロセッサで無効な命令を実行するとシステム全体がハングアップするバグを持つプロセッサかどうか。このバグが有っても、無効な命令を実行した時のバグなので普通は影響は出ない。（わざと実行するようにしない限りは。）
coma_bug　　詳細は不明。Cyrix/IBM製プロセッサ6x86系でyesになる模様。影響はよくわかりません。
fpu　　数値演算コプロセッサを搭載しているかどうか。386まではCPUとは別に「387」というオプションが無いとここがyesにならない。また、486でもSXだとオプションじゃなかったかな？と思う。それ以降は当たり前のように内蔵しているのでほとんどyesになるはず。
fpu_exception　　私のつたない英文読解能力によれば…数値演算プロセッサが演算を終了した際、CPUに結果を通知するために割り込みを発生させることができるかどうか。極めて古い数値演算プロセッサの一部にはCPUがI/O接続をして結果を獲得しなければならないものがある。らしいです
cpuid level　　CPUが持つ固有の情報をどのレベルまで読み出せるかというフラグ。このレベルによってCPUの個体番号が読めたりするらしい。
wp　　詳細は不明。４８６とか３８６とかもの凄く古いプロセッサだとnoになってたりする模様。
bogomips　　ベンチマーク値。単位はMIPS。かなり単純なベンチマークだそうなので、ここに正確性を求めるのは酷というもの。まあ、超おおざっぱに性能比較したいとかそういう時に参考程度でどうぞ。

　まあ、ここまででも結構調べるのが大変だったりする訳ですが、flagsなんか超面倒臭そうですよ奥さん。


fpu　　数値演算コプロセッサを内蔵している
vme　　仮想86モード拡張が有効（３８６以降のプロセッサなら全部有効…なはず）
de　　デバッグモード拡張が有効（上に同じく）
pse　　ページサイズ拡張が有効。（メモリのページング処理にまつわる）
tsc　　タイムスタンプコントローラを内蔵している（プロセッサ内に内蔵されている64ビットカウンター）
msr　　CPUのインプリメントに依存する機能を制御するレジスタ群「Model Specific Register」が有効
pae　　物理アドレス拡張が有効（IA32プロセッサで、この機能によって物理メモリのアドレス指定に使えるビット数が32ビットから36ビットに拡張される）
pse36　　ページサイズ拡張が有効（peaと同じような事をページングテーブルでもやる）
mce　　プロセッサがエラーの発生をチェックしてOSにレポートする機能が有効。多分これが機能したとき、そのプロセッサについては「お前はもう、死んでいる…（ホアタァッ！）」ということかと思われ。
mca　　上に同じ
cx8　　CMPXCHG8 instructionという物が有効らしい
apic　　割り込みコントローラAPICが有効
sep　　Pentium2から実装された機能で、カーネルのシステムコールを高速で実行するためのロジックが有効…ということらしい。
mtrr　　キャッシュメモリの現状をプロセッサに通知するためのレジスタが有効
pge　　仮想記憶にまつわる何か…らしいがよくわからん
cmov　　CMOV命令（Conditional MOV命令）が有効
pat　　x86ページングテーブルを拡張し、ページジングテーブルを修飾する情報を追加する機能が有効　　
clflush　　CLFLUSH instructionという拡張命令が有効らしい
dts　　Debug Trace Store
acpi　　MSRを経由してのACPIが有効
mmx　　MMX命令（マルチメディア拡張命令）が有効
fxsr　　FXSAVE and FXRSTOR instructionsという物が有効らしい（スタックにレジスタをセーブ・リストアする挙動にかかわるそうだ）
sse　　マルチメディア拡張セットSSEが有効
sse2　　マルチメディア拡張セットSSE-2が有効
ss　　CPU self snoopだそうですが、よくわかりません。
ht　　ハイパースレッディングが有効
tm　　プロセッサ内の温度センサーが有効
tm2　　上に同じ
pbe　　よくわかりません。
nx　　プロセッサが備えるメモリ保護機構（Execute Disabled）が有効
lm　　ロングモード対応（x86_64）
constant_tsc　　よくわかりません。
pni　　よくわかりません。
monitor　　よくわかりません。
ds_cpl　　よくわかりません。
vmx　　システム仮想化支援機能が有効
est　　SpeedStepテクノロジに対応
cx16　　CMPXCHG16B拡張命令に対応しているということらしい
xptr　　Send Task Priority Messages
lahf_lm　　ロングモードにおいて、LAHF命令、SAHF命令が有効
IA64　　IA-64プロセッサである


　つまり、要するにflagsにlmが書いてあれば64ビット版のOSが動作する…はず…ということですね。

　ちなみに、今動いているOSが64ビットかどうかは関係ないです。今動いているOSが64ビットかどうか見たいときはuname -aしませう。
```