```
簡素な管理でよければ、商品マスタにロケを持たせたりとか。
　マスタ登録時に入力
　入荷後の棚移動時に入力
のどちらかでセット。


## 管理No
在庫プライマリキー。ロケを含んだり含まなかったり。

## 賞味期限管理
しない場合は賞味期限を9999/12/31としても。

## 出荷データ・出荷実績
　基本、伝票Noをキーに返す。そうでない場合はキーとなる値を相互で決める。

## 出荷梱包紐付あり/なし

## JANCD
バーコード体系の違いは要確認。
送付して受け入れ先で読み取りテストは必須。

## I/F
Inter Face

## 送り状
## 荷番
何カ月サイクルでよいかはベンダーごとに異なる。

## ITF（Interleaved Two or Five）
物流用に作られたコードの１種。読み取りやすい。
標準は14桁。
JIS規格。0～9を表現可。

## シュートNo
カゴ車（またはドーリー）を並べる所。倉庫のどの場所かを表す。

## 納品日
単に「納品日」と言った場合、センター納品日を指しているのか、店舗納品日を指しているのかを確認。
（暗黙知となっている場合もある。センターが多いかも。）
センター納品→店舗納品となるので、
店舗とセンターのリードタイムを考慮しないといけない場合も。

## 店舗納品、センター納品
どちらかを必ず確認。

## 商品マスタ
在庫が存在する商品、荷動きが存在する商品は削除できないようにした方がいいかも。

## チェック処理
必須入力チェック
サイズチェック（全角の場合、文字コードをチェック）
整合チェック（数値、Null、改行コード等）
マスタ存在チェック
Nullチェック

## 在庫調整
入荷処理で在庫調整をしたり。
（荷動き）

黒伝：出荷の伝票
赤伝：出荷取消の伝票。（赤には対になる黒が必ず存在する）
入荷（赤）：在庫を減らす時に使う。（在庫調整でなく、この方法を使う場合もある。）

荷動き＝受払（現場によって名称が変わる程度）
入庫・出庫・在庫調整・棚移動など
在庫に影響する操作全般。
在庫がどのように変動したかは、これを見る。


帳簿残
現品残

引当：帳簿残を減らす
出荷：現品残を減らす

指示数
引当数


## 逆転（⇔正転）
賞味期限が古い順から引当される事。
通常、賞味期限順に引当（もしくは先入れ先出し）されるが、
賞味期限よりも優先度が高いパラメータが設定されている事もある。
（景品付きの商品、キャンペーン商品など）


## 出荷限界数（日数）
製造日からX日間出荷可能

入荷予定
入荷実績
出荷予定
出荷実績
在庫実績

## 納品物（日々の）
　個口明細書
　納品明細書
　…etc ベンダーごとに異なる。
　請求は月次/日時資料を基に。算出する事が多い。


## SKU（Stock Keeping Unit）
在庫管理を行う場合の単位。
「アイテム」は商品の種類をさすが、SKUは同じ商品でもパッケージの違いや値段の違いなど、アイテムより小さい単位で分類される。

## 個建運賃
距離やルートのみでなく、業者によってタリフが設定されている事もある。


## PDラベル（Physical Distribution）
出荷データとの紐付きが無い。
店舗別仕分け。

## SCMラベル（Shipping Carton Marking）
出荷データ（ASNデータ）との紐付けがある。
箱を空けなくても中身が分かったり。

## ASNデータ
事前出荷情報。
箱（オリコン含む）の中に、何が入っているかという情報を保持している。

## TC1
センター納入後、即時出荷

## TC2
取引先から総量入荷される荷物をセンターで仕分けた後、即時出荷

## 箱
ケース > ボール > ピース

ピースは販売の最小単位。
ケースJAN、ボールJAN、ピースJANが同じの事も。
（そういう場合はITFを使うか。）


## 運賃の適用
実重量梱包を含めた貨物の実際の重量容積重量縦(m)×横(m)×高さ(m)×280kg
（端数は0.5kg単位に切り上げ）計算事例重さが200kgで、縦、横、高さがそれぞれ1.0mの立方体の容積重量は、
1.0m×1.0m×1.0m×280kg＝280kg となります。この立方体の実重量は200kgですが、容積重量が280kgであるため、
大きいほうの280kgが運賃重量となり、それをもとに料率が適用されトラック運賃が計算されます。 
※「あと勝ち」


## 才（才数）
30cm X 30cm X 30cm
    体積（容積）の単位だが、重さの指数として使われる事も。
１才：0.0278立方メートル
１才：約 8kg


## 容積からの重量計算
重量 ÷ 280
※物流業界標準。結構合うそうな。


## 原単価
「100.00」等、小数点第２くらいまで扱っている場合がある。
（伝票にて背景色が違う数字は、小数点以下）
単価で見ると１円に満たないが、大量発注となると話が変わってくる。
取引先によって、金額の切り上げ、切り捨て、四捨五入、五捨六入など、計算が変わる。

## 売価
販売価格。通常、小数点を含めない。

## 荷主
荷物の所有者。または業務を委託した事業者。

## 異形品
ソーターが仕分けできない商品。（載せる事ができない）
　・サイズ規格外
　・形状不安定
　・重心が高い
　・強度が弱く、変形しやすい
　・円筒形
　・一斗缶
など。（ルールはベンダーごとにバラバラ。）

## 個口
１個口＝箱の数が１個。
複数の商品を頼んだ場合でも、全てを１箱に収めたら１個口。
１つの商品を頼んでも、３つの箱に入って送られるなら、３個口。

## ピッキング
注文や要求に応じて、その品物を在庫から運び出す事。
　・パレットピッキング - パレット単位
　・ケースピッキング - ケース谷
　・バラピッキング - 単品ごと

## 逆転
通常、賞味期限が古い順から出荷するが、何らかの事情で
古いものから出荷されない事。

## 送り状
運送物に張るアレ。
運送貨物の明細、数量、単価、合計金額が記載された物。
英語名：invoice。請求書もinvoceだからややこしい。けど、請求書に載せるべき情報は、たいてい載ってる。

## 引当
帳簿残を減らす。
不足分をどうするかはベンダーごとに異なる。（出荷しない、あるだけ出荷 等）
　・ケース引当
　・ピース引当


## PO(P/O)
Purchace Order：発注者。
見積→PO→納品→検収→支払
※海外では納品の後にPOとなる事が多い？


## -
事務所での帳票待ち時間
１日１０分×８人（にん）

事務所、現場の行き来、
１０分×８人×日数

```