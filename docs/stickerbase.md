# PUBLISHERS
|Column|Type|Key|Example|
|-|-|-|-|
|publisher_id|TINYINT|PK|1|
|publisher_name|VARCHAR(200)||Panini, Topps|

# STICKER_ALBUMS
|Column|Type|Key|Example|
|-|-|-|-|
|album_id|TINYINT|PK|1|
|album_name|VARCHAR(200)||Euro 2024 Topps|
|album_release_year|SMALLINT||2024|
|album_season|VARCHAR(50)||2023/2024|
|album_type|TINYINT|FK|Foreign Key (Album_types)|
|total_stickers|SMALLINT||500|
|publisher_id|TINYINT|FK|Foreign Key (Publishers)|

# ALBUM_TYPES
|Column|Type|Key|Example|
|-|-|-|-|
|type_id|TINYINT|PK|1|
|type|VARCHAR(50)|PK|Stickers, Cards|

<!-- # COLLECCTIONS_STICKERS
|Column|Type|Key|
|-|-|-|
|collection_id|TINYINT|PK|
|sticker_id|VARCHAR(25)|PK|
∏ -->

# STICKERS
|Column|Type|Key|Example|
|-|-|-|-|
|sticker_id|VARCHAR(25)|PK|POR1|
|sticker_description|VARCHAR(200)||Diogo Costa|
|sticker_section|VARCHAR(200)||Portugal|
|sticker_type|VARCHAR(100)||Base Card, Foil, Gold|
|sticker_album|TINYINT|FK|Foreign Key (Sticker_Albums)|

# CARDS
|Column|Type|Key|Example|
|-|-|-|-|
|card_id|VARCHAR(25)|PK|POR1|
|card_description|VARCHAR(200)||Diogo Costa|
|card_section|VARCHAR(200)||Portugal|
|card_type|VARCHAR(100)||Base Card, Parallel, Gold|
|card_album|TINYINT|FK|Foreign Key (Sticker_Albums)|

# PARALLELS
|Column|Type|Key|Example|
|-|-|-|-|
|parallel_id|INT|PK||
|sticker_id|VARCHAR(25)|FK||

# TRADES
|Column|Type|Key|Example
|-|-|-|-|
|trade_id|INT|PK|
|stickers_sent||
|stickers_received||
|trade_status|VARCHAR(50)|FK|Foreign Key (Trading_status)
|created_at|DATE||
|closed_at|DATE||

# TRADING_STATUS
|Column|Type|Key|Example
|-|-|-|-|
|trading_status_id|INT|PK|
|trade_status_description|VARCHAR(50)||Pending, Closed