class Group < ApplicationRecord
  has_many :groups_users, dependent: :destroy
  has_many :users, through: :groups_users
  has_many :messages, dependent: :destroy
  validates :name, presence: true
end
