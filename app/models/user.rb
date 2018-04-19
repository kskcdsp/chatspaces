class User < ApplicationRecord
  has_many :groups_users, dependent: :destroy
  has_many :groups, through: :groups_users
  has_many :messages, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
