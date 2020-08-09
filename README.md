# README

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :users, through: :groups_users
belongs_to :messages

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :users, through: :groups_users
belongs_to :messages

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
belongs_to :user
belongs_to :group

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|text|string|null: false, foreign_key: true|
|image|text|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

