```
id
key
code
type
```

```
Please specify the argument (up/down)
```

データベース名およびカラム名、動詞は使いたくない。  
基本、名詞を使う。  

is_required_to_state_delivery_statement  
is_required_stating_delivery_statement  

is_required_picking  

_________________________________________________________
## 会社とか

|  論理名           |  物理名                       |
|:---------------|:---------------------------|
|  会社サイト         |  website                   |
|  緊急連絡先         |  emergency_phone_number    |
|  緊急連絡先メールアドレス  |  emergency_email_address   |
|  緊急連絡先名        |  emergency_contact_name    |
|  請求先事業者名       |  billing_contact_name      |
|  請求先郵便番号       |  billing_zip_code          |
|  請求先担当者名       |  billing_person_in_charge  |
|  請求先担当者名       |  billing_person_name       |
|  利用状況          |  usage_status              |
|  代表者氏名         |  representative_name       |
|  登録日           |  registration_date         |
|  反社チェック依頼日     |  anti_social_check_date    |
|  承認日           |  approval_date             |
|  無料期日（お試し期間）   |  final_date_of_free_trial  |
|  契約日           |  contract_date             |
|  規約同意日時       |  term_agreement_date             |
|  取扱商品       |  product_category             |
|  デモ提供終了日       |  demo_expiration_date             |
|  料金滞納日       |  unpaid_fee_date             |
|  解約日       |  closed_date             |
|  アカウントロック日   |  account_locked_date      |



```
反社  anti social forces
forces　は「組織」
organization は、「公的な組織」
```

## 請求・支払

|  論理名            |  物理名                                         |
|:----------------|:---------------------------------------------|
|  伝票 / 請求書           |  invoice                               |
|  支払方法           |  payment_method                              |
|  代引手数料          |  cash_on_delivery_fee                        |
|  消費税率           |  consumption_tax_rate                               |
|  割引             |  discount                                    |
|  軽減税率区分         |  reduced_tax_type / reduced_tax_rate_type    |


（以下、参考情報。色々考えを変えた）  

|  論理名            |  物理名                                         |
|:----------------|:---------------------------------------------|
|  商品数量計（何個買ったか）  |  total_item                                  |
|  金額計（税込）        |  total_amount                                |
|  商品合計額          |  total_amount_of_items / total_amount_items  |
|  請求額計（税込）       |  amount_billed                               |
|  商品金額計          |  total_item_amount                           |
|  軽減税率対象合計額      |  reduced_tax_rates_total_amount              |
|  軽減税率対外象合計額     |  non_reduced_tax_rates_total_amount          |
|  金額計（税込）           |  amount_billed                              |

「total」や「amount」を、末尾に持ってきても先頭に持ってきても、文法的には正しい。  
（先頭に持ってくる場合は、「total_amount_of_」と、"of" が入る。ただし、カラム名の "of" は省略する事も多い）  

billed  
請求する金額。（＝税込金額）  

discount_rate  

### 請求・支払（明細と合計）
ヘッダにて管理する金額を  
「 total_amount_XXXX 」   

明細にて管理する金額（明細内で "単価 X 数量" の計算をする場合など）を  
「 amount_XXXX 」   
で管理する  

#### ヘッダ

|  論理名            |  物理名                                     |
|:----------------|:---------------------------------------------|
|  商品合計額          |  total_amount_price               |
|  消費税計             |  total_amount_consumption_tax  |  
|  請求額計（税込）      |  total_amount_billed  |  
|  軽減税率対象合計額    | total_amount_reduced_tax      |
|  軽減税率対象外合計額  | total_amount_non_reduced_tax  |

#### 明細

|  論理名            |  物理名                                     |
|:----------------|:---------------------------------------------|
|  商品金額計        |  amount_price  |
|  消費税            |  amount_consumption_tax  |


## ポイント・クーポン

|  論理名       |  物理名                           |
|:-----------|:-------------------------------|
|  ポイント利用額   |  total_amount_consumed_points  |
|  ポイント残高    |  point_balance                 |
|  今回取得ポイント  |  granted_point                 |
|  今回利用ポイント  |  consumed_points_amount        |
|  クーポン金額    |  coupon_amount                 |


## 物流

|  論理名                            |  物理名                                       |
|:--------------------------------|:-------------------------------------------|
|  発注No.                          |  order_no                                  |
|  入庫                           |  inbound                   |
|  入荷予定日                          |  estimated_in_stock_date                   |
|  入荷済数量                          |  in_stock_quantity                         |
|  出荷限界設定日数                       |  number_of_shipment_limit_days             |
|  出荷日                            |  shipment_date                             |
|  個口数                            |  total_units                               |
|  受注時間                           |  order_time                                |
|  着日                             |  delivery_date                             |
|  出荷予定日                          |  estimated_shipment_date                   |
|  単価                        |  unit_price              |
|  賞味期限                     |  flavor_expiration_date  |
|  消費期限                     |  expiration_date         |
|  XX回数                      |  num_XXXXX / number_of_XXXXX |
|  購入回数                     |  num_purchases / number_of_purchases |
|  ケース入数                          |  quantity_per_case                         |
|  発注点数量                          |  ordering_point_quantity                   |
|  適正在庫数量                         |  reasonable_inventory_quantity             |
|  温度帯区分                          |  temperature_zone                          |
|  保管料                            |  storage_fee                               |
|  届け先                            |  destination                               |
|  出荷可能在庫                         |  available_inventory / sellable_inventory  |
|  総在庫（決まった日サイクルがあり、この日付にいくつあるか）  |  gross_inventory                           |
|  総在庫（全体）                        |  total_inventory                           |
|  引当可能か                          |  is_allocatable                            |
|  同梱タイプ                          |  bundle_type                               |
|  取扱商品（の種類）                       |  product_category                               |
|  商品数（取り扱っている商品の数）            |  number_of_product                               |
|  月間出荷数量                           |  number_of_monthly_shipment                               |
|  保管坪数（広さ）                            |  storage_size                               |
|  定期便                               |  subscription_box                               |
|  （定期便の）次回配送日                  |  next_date_of_subscription_box                               |
|  （定期便の）累計発送回数                  |  number_of_current_shipped_subscription_box                               |
|  （１オーダーあたりの）平均梱包数         |  average_number_of_items / average_number_of_products     |
|  在庫数にかかわらず、引き当て可能か         |  is_allocatable_regardless_inventory     |
|  消費期限管理をするか               |  is_controlled_expiration_date     |
|  出荷予定日                        |  estimated_shipping_date     |
|  出荷指示数量                       |  shipping_instruction_quantity     |
|  引当数量                       |  allocation_quantity     |


allocation_quantity -> OK  
allocated_quantity -> NG  
これだと「quantity」が修飾されている。  



stocktaking_mode_controllers  棚卸制御テーブル  
「stocktaking_status」or「stocktaking_mode」  

消費期限管理  
is_managed_expiration_date  
is_controlled_expiration_date  -> control は、何かしらのルールがあって、それ沿っている  
is_managed_expiration_date  -> 経営・運営レベルの話  


```
〜のタイプ

bundled_type -> 梱包されたタイプ（「タイプ」が梱包されている）
bundle_type -> 梱包タイプ
```

## システム

|  論理名       |  物理名                  |
|:-----------|:----------------------|
|  並び順        |  sort_order              |
|  必須設定    |  is_required              |
|  適用優先順位    |  priority              |
|  言語    |  lang              |
|  変換前（変換対象）      |  target / target_text          |
|  変換後      |  converted          |
|  算出開始日     |  count_starting_date  |
|  時制条件タイプ   |  tense_timeline_type  |
|  ファイル保存パス  |  file_path            |
|  ヘッダを使うか(CSVの扱いとか)   |  is_header_enabled       |
|  カラム名 or キー名   |  column_name_or_key_name       |
|  外部アクセスコード  |  external_access_verification_code       |
|  連結文字  |  concatenation_char / char_concatenation     |
|  外部アクセスコード  |  external_access_verification_code       |
|  必須解除設定  |  is_editable_required_attribute       |
|  表示エラーメッセージ  |  error_message / display_error_message / disp_error_message       |
|  再計算が必要か  |  is_required_recalculation       |
|  必須設定が無効か  |  is_disable_required_attribute / is_disable_requirement       |
|  定義  |  definitions       |
|  サンプル値  |  example_value / sampled_value　（example のが自然）       |
|  ヘッダテキスト  |  header_field       |


#### 名詞・名詞 (concatenation_char / char_concatenation )
-> 入れ替わっても大丈夫（・・・大丈夫じゃない場合もある）  
（例）seat belt　seat-belt  




______________________________________________
# amount / total
amount は前に持ってきていいけど、正しくは「amount_of（"of" が省略されてる）」  
（amount は名刺）
後ろに持ってくる時は、of は不要。  

total は形容詞  
形容詞は必ず名刺の前  


## total と amount の使い分け
total は全体量（明細の全体の合計金額、のような感覚）  
amount は量（全体ではなく、個別の量）  

total を使うなら「number」は無くていい  


## 「total」は、基本的に「前」（後ろで使っても、文法的に間違いではない）
total_units  
total_amount_of_items  
total_amount_items  
total_tax  
total_consumption_tax  


## 「amount」も基本的に前
amount_billed  
consumed_points_amount  
amount_consumed_points  

## note
最後のは混在するのはよくあります。quantityは数えられないものに対しても使えるのにないして、numberは数えれるものに対してしか使えません。qtyの略はかなり一般的なので大丈夫です！  

