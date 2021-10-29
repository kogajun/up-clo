# README
# こんな経験ありませんか？
* ショッピングで持っている物と同じ物を買ってしまう経験があるかた。
* ショップ、ブランド毎でサイズが違うかた。
* 毎日のスタイリングが面倒と感じるかた。
# アプリケーション名
UP-CLO <br>
(アプクロ)<br>
[![Image from Gyazo](https://i.gyazo.com/998aa583c74c9c1a50f5d34fec3763e4.png)](https://gyazo.com/998aa583c74c9c1a50f5d34fec3763e4)
# アプリケーション概要
クローゼットアプリケーション。<br>
あなたの持っている洋服、雑貨をWebで閲覧できる。<br>
似ている色柄での検索して類似品をかわないよに。<br>
気に入ったスタイリングの投稿もできます！<br>
# URL
# テスト用アカウント
* Basic認証ID：<br>
* Basic認証Pass：<br>

## ログインに必要な情報
* 
* 

# 利用方法
①ユーザー登録<br>
②クローゼットへアイテム登録！<br>
・まずは最近よく使うアイテムからでOK！<br>
③クローゼットを検索してみましょう。<br>
・カテゴリー、色、柄、サイズなどで、検索可能。<br>
④気に入ったアイテムにはメモやタグを付けましょう！<br>

#  実装した機能についての画像やGIFおよびその説明
実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。

# 実装予定の機能
今後実装予定の機能

# データベース設計　
ER図等を添付。
[![Image from Gyazo](https://i.gyazo.com/8c0d9a9e1971a1c7e5131622d424da83.png)](https://gyazo.com/8c0d9a9e1971a1c7e5131622d424da83)

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| password           | string              | null: false               |
| encrypted_password | string              | null: false               |
| nickname           | string              | null: false               |

### Association

* has_many :items

## items table

| Column                | Type       | Options                        |
|-----------------------|------------|--------------------------------|
| user                  | references | null: false, foreign_key: true |
| item_name             | string     | null: false                    |
| category_id           | integer    | null: false                    |
| color_id              | integer    | null: false                    |
| pattern_id            | integer    | null: false                    |
| season_id             | integer    | null: false                    |
| brand                 | string     |                                |
| price                 | integer    | null: false                    |
| scene                 | string     |                                |
| memo                  | text       |                                |

### Association

- belongs_to :user
- has_many_attached :images
- has_many :item_tag_relations
- has_many :tags,through :item_tag_relations

## item_tag_relations table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| item        | references | null: false, foreign_key: true |
| tag         | references | null: false, foreign_key: true |

### Association

- belongs_to :tweet
- belongs_to :tag

## tags table

| Column           | Type       | Options                        |
|------------------|------------|--------------------------------|
| tag_name         | references | null: false, uniqueness: true  |

### Association

- has_many :item_tag_relations
- has_many :items,through :item_tag_relations

# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。