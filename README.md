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

messages

| column     |   Type      | options            |
|:-----------|------------:|:------------------:|
| text       | text        |                    |
| image      | string      |                    |
| group_id   | integer     | null: false        |
| user_id    | integer     | null: false        |

### Asociation
- belongs_to :group
- belongs_to :user

users

| column     |   Type      | options            |
|:-----------|------------:|:------------------:|
| name       |  string     | null: false        |

### Asociation
- has_many :messages
- has_many :groups, through: :group_users
- has_many :group_users

### index
 index :true

groups

| column     |   Type      | options            |
|:-----------|------------:|:------------------:|
|       name | string      | null: false        |

### Asociation
- has_many :users, through: :group_users
- has_many :messages
- has_many :group_users


group_users

| column     |   Type      | options            |
|:-----------|------------:|:------------------:|
| group_id   | integer     | foreign_key: true  |
| user_id    | integer     | foreign_key: true  |

### Asociation
- belongs_to :group
- belongs_to :user
