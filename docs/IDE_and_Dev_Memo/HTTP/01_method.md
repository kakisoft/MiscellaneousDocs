## HTTP メソッドについて

|  method |    discription       |
|:--------|:---------------------|
|  PUT    |  更新というより置換     |
|  PATCH  |  リソースの部分更新     |


 * "更新"でイメージするような、リソースの一部を更新する処理はPatch
 * ファイルアップロードのような、指定したURLにあるリソースをまるごと置換えるような処理はPut

insert文 - post  
update文 - patch  
delete文 - delete  
　  
・・・みたいな使い方をしている人もいたり。  
　  
　  
PUT  - 冪等  
POST - 冪等を保証しない？  


