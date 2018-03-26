# chatspace

## Groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :messages

## Usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index|

### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :messages

## Membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true, unique: true, add_index|
|group_id|integer|null: false, foreign_key: true, unique: true, add_index|

### Association
- belongs_to :group
- belongs_to :user

## Messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|body|text||
|image|string||

### Association
- belongs_to :group
- belongs_to :user
