## InnoDB
MySQLやMariaDBなどのリレーショナルデータベース管理システム(RDBMS)で使用される、トランザクション処理をサポートするストレージエンジンの1つ。  
トランザクションのACID特性（原子性、一貫性、独立性、耐久性）を保証するために、ロックやマルチバージョン同時実行制御（MVCC）などの機能を提供する。  

また、高い並行性や可用性、耐久性を実現するために、クラスタリング機能やレプリケーション機能も備えている。  
InnoDBは、MySQL5.5以降のバージョンでデフォルトのストレージエンジンとなっており、多くの大規模Webアプリケーションで広く使用されている。


## InnoDBを使っているか確認する方法
SHOW ENGINES;

結果の中から、"InnoDB"という名前のエンジンがあるかどうかを確認します。InnoDBが表示されている場合、MySQLサーバーはInnoDBストレージエンジンを使用しています。

|  Engine              |  Support  |  Comment                                                         |  Transactions  |  XA   |  Savepoints  |
|:---------------------|:----------|:-----------------------------------------------------------------|:---------------|:------|:-------------|
|  InnoDB              |  DEFAULT  |  Supports transactions, row-level locking, and foreign keys      |  YES           |  YES  |  YES         |
|  MRG_MYISAM          |  YES      |  Collection of identical MyISAM tables                           |  NO            |  NO   |  NO          |
|  CSV                 |  YES      |  CSV storage engine                                              |  NO            |  NO   |  NO          |
|  BLACKHOLE           |  YES      |  /dev/null storage engine (anything you write to it disappears)  |  NO            |  NO   |  NO          |
|  PERFORMANCE_SCHEMA  |  YES      |  Performance Schema                                              |  NO            |  NO   |  NO          |
|  MyISAM              |  YES      |  MyISAM storage engine                                           |  NO            |  NO   |  NO          |
|  ARCHIVE             |  YES      |  Archive storage engine                                          |  NO            |  NO   |  NO          |
|  MEMORY              |  YES      |  Hash based, stored in memory, useful for temporary tables       |  NO            |  NO   |  NO          |
|  FEDERATED           |  NO       |  Federated MySQL storage engine                                  |                |       |              |

