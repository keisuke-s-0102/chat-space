# README

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Association
has_many :users, through: :group_users
has_many :messages
has_many :groups_users

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :users, through: :groups_users
has_many :messages
has_many :groups_users

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
|text|string|
|image|string|

### Association
- belongs_to :group
- belongs_to :user

