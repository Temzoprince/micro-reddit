class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 12 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true
end
