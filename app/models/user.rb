class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 8 }
end
