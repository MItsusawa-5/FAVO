# README
![](https://i.gyazo.com/ecf27aa3bd0228aaaa177377ff30fddf.jpg)
![](https://i.gyazo.com/f914892ff301ab19932bdbe7d0592191.jpg)
<!-- なぜこのアプリをつくろうと思ったのか -->
<!-- 画像そのものを挿入 -->

# アプリ名「FAVO」
自分のお気に入り（Favorite）商品を管理するサイトです。

## Description
自分のお気に入り（Favorite）商品を管理するサイトです。
商品詳細ページでは商品の関連動画を添えて見る事が出来ます。


## Features

- haml/SASS記法と、命名規則BEMを使ったマークアップ
- deviseを用いたユーザー登録フォーム
- capistranoによるAWS EC2への自動デプロイ
- ActiveStorageを使用しAWS S3への画像アップロード

## Requirement

- Ruby 2.6.5
- Rails 6.0.0


## Installation

    $ https://github.com/MItsusawa-5/FAVO.git
    $ cd FAVO
    $ bundle install



https://gyazo.com/3c7437f713463bb62a5af7b4d31a2363


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :comments
- has_many :products
- has_many :categories


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association
- has_many :products
- belongs_to :user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string| null: false, unique: true |
|price|integer| null: false |
|image|text| unique: true |
|link|text||

### Association
- belongs_to :group
- belongs_to :user
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|message|text||
|created_at|date_time||
|user_id|integer|null: false, foreign_key: true|
|categories_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
