# README
# アプリケーション名
* UP-CLO <br>
(アプクロ)<br>
[![Image from Gyazo](https://i.gyazo.com/998aa583c74c9c1a50f5d34fec3763e4.png)](https://gyazo.com/998aa583c74c9c1a50f5d34fec3763e4)
* ユーザーページ
[![Image from Gyazo](https://i.gyazo.com/541a171afe2f5d3dc97c6995886d3fa3.jpg)](https://gyazo.com/541a171afe2f5d3dc97c6995886d3fa3)
# アプリケーション概要
クローゼットアプリケーション。<br>
あなたの持っている洋服、雑貨をWebで閲覧できる。<br>
似ている色柄での検索して類似品をかわないよに。<br>
## こんな経験ありませんか？
* ショッピングで持っている物と同じ物を買ってしまう経験があるかた。
* ショップ、ブランド毎でサイズが違うかた。
# URL
https://up-clo.herokuapp.com/
# テスト用アカウント
* Basic認証ID：adnin<br>
* Basic認証Pass：2222<br>

## ログインに必要な情報
テスト用アカウント
* Email：test@test.com
* Password：cccccccccc10

# 利用方法
①ユーザー登録<br>
②クローゼットへアイテム登録！<br>
・まずは最近よく使うアイテムからでOK！<br>
・特徴的なもの、お気に入りのものはメモをしっかりと！<br>
③クローゼットを検索してみましょう。<br>
・カテゴリー、色、柄、サイズなどで、検索可能。<br>

# アプリ機能
* 新規登録
* アイテム登録機能
* 詳細ページ（編集・削除機能）

# 実装予定の機能
* 検索機能（フリーワード・条件）


# データベース設計　
[![Image from Gyazo](https://i.gyazo.com/5cd319517baa996f10cc36492d8d8310.png)](https://gyazo.com/5cd319517baa996f10cc36492d8d8310)


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
| brand                 | string     |                                |
| category_id           | integer    | null: false                    |
| color_id              | integer    | null: false                    |
| pattern_id            | integer    | null: false                    |
| season_id             | integer    | null: false                    |
| price                 | integer    | null: false                    |
| size                  | string     | null: false                    |
| scene                 | string     |                                |
| memo                  | text       |                                |

### Association

- belongs_to :user
- has_many_attached :images