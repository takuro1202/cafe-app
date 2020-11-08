# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
|image|string| |

## Association
- has_many :reviews
- has_many :comments

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|cafename|string|null: false|
|address|string|null: false|
|image|string| |
|text|text|null: false|
|evaluation1|integer|null: false|
|evaluation2|integer|null: false|
|evaluation3|integer|null: false|
|evaluation4|integer|null: false|
|evaluation5|integer|null: false|
|existence1|string| |
|existence2|string| |
|existence3|string| |
|user_id|integer|null: false, foreign_key: true|



## Association
- has_many :reviews
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|post_id|integer|null: false|foreign_key: true|
|user_id|integer|null: false|foreign_key: true|

## Association
- belongs_to :user
- belongs_to :posts


